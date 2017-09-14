Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.high-consulting.de ([62.245.247.194])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dsUKF-0001Wp-4n
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 13:37:12 +0000
From: gp@high-consulting.de
Date: Thu, 14 Sep 2017 15:36:25 +0200
Message-Id: <1505396185-27310-1-git-send-email-gp@high-consulting.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 3/3] yubikey authentication in login,
 ykpasswd command to manage the database
To: barebox@lists.infradead.org
Cc: Gerd Pauli <gp@high-consulting.de>

From: Gerd Pauli <gp@high-consulting.de>

Signed-off-by: Gerd Pauli <gp@high-consulting.de>
---
 commands/Kconfig                 |    8 +
 commands/Makefile                |    1 +
 commands/ykpasswd.c              |  236 +++++++++
 common/Makefile                  |    1 +
 common/password.c                |   29 +-
 common/yubikey.c                 |  195 +++++++
 include/yubikey.h                |    9 +
 include/yubikey/yubikey_common.h |  140 +++++
 include/yubikey/yubikey_db.h     |  101 ++++
 include/yubikey/yubikey_util.h   |   68 +++
 lib/Kconfig                      |    4 +
 lib/Makefile                     |    1 +
 lib/yubikey/Makefile             |    4 +
 lib/yubikey/yubikey_db.c         |  649 +++++++++++++++++++++++
 lib/yubikey/yubikey_util.c       | 1077 ++++++++++++++++++++++++++++++++++++++
 15 files changed, 2521 insertions(+), 2 deletions(-)
 create mode 100644 commands/ykpasswd.c
 create mode 100644 common/yubikey.c
 create mode 100644 include/yubikey.h
 create mode 100644 include/yubikey/yubikey_common.h
 create mode 100644 include/yubikey/yubikey_db.h
 create mode 100644 include/yubikey/yubikey_util.h
 create mode 100644 lib/yubikey/Makefile
 create mode 100644 lib/yubikey/yubikey_db.c
 create mode 100644 lib/yubikey/yubikey_util.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 2e296a3..223661d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1375,6 +1375,14 @@ config CMD_MENUTREE
 	  Options:
 		  -m DIR	directory where the menu starts (Default: /env/menu)
 
+config CMD_YKPASSWD
+        tristate
+        select YUBIKEY
+        depends on CMD_LOGIN
+        prompt "ykpasswd"
+        help
+          Set Yubikey Database
+
 config CMD_PASSWD
 	tristate
 	depends on CMD_LOGIN
diff --git a/commands/Makefile b/commands/Makefile
index 42bc1d8..cf5c57e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -126,3 +126,4 @@ obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_CCRYPT)        += ccrypt.o
 obj-$(CONFIG_CMD_KEYSTOREINIT)	+= keystore_init.o
+obj-$(CONFIG_CMD_YKPASSWD)      += ykpasswd.o
diff --git a/commands/ykpasswd.c b/commands/ykpasswd.c
new file mode 100644
index 0000000..450484c
--- /dev/null
+++ b/commands/ykpasswd.c
@@ -0,0 +1,236 @@
+/*
+ * ykpasswd.c - Initializes the yubikey database
+ *
+ * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>, HighConsulting GmbH & Co. KG
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <linux/stat.h>
+#include <linux/ctype.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <password.h>
+#include <envfs.h>
+#include <yubikey/yubikey_common.h>
+#include <yubikey/yubikey_db.h>
+#include <yubikey/yubikey_util.h>
+
+/* 
+ * #define DBG(x) do { printf x; } while (0)
+ * #define DEBUG
+ */
+
+#define DBG(x)
+#undef DEBUG
+
+
+static int do_ykpasswd(int argc, char *argv[])
+{
+  int ret = 1;
+  ykdb_entry entry;
+  ykdb_h *handle = NULL;
+  yk_ticket tkt;
+  const char user_text[] = "barebox";
+  char otp[201];
+  char key_text[33];
+  char *public_uid_text = NULL;
+  char *private_uid_text = NULL;
+  uint8_t ticket_enc_key[256];
+  uint8_t ticket_enc_hash[32];
+  uint8_t public_uid_bin[PUBLIC_UID_BYTE_SIZE];
+  uint8_t public_uid_bin_size = 0;
+  uint8_t private_uid_bin[PRIVATE_UID_BYTE_SIZE];
+  uint8_t private_uid_bin_size = 0;
+  int i;
+
+  memset(&entry,0,sizeof(ykdb_entry));
+  memset(&tkt,0,sizeof(yk_ticket));
+  memset(key_text,0,33);
+  memset(otp,0,201);
+  memset(ticket_enc_key,0,sizeof(ticket_enc_key));
+  memset(ticket_enc_hash,0,sizeof(ticket_enc_hash));
+  memset(public_uid_bin,0,sizeof(public_uid_bin));
+  memset(private_uid_bin,0,sizeof(private_uid_bin));
+
+  /* set default values for the entry */
+  entry.ticket.last_use = 0x0000;
+  entry.ticket.last_timestamp_lo = 0x0000;
+  entry.ticket.last_timestamp_hi = 0x00;
+  entry.ticket.last_session = 0x00;
+  
+  /* set additional default values for the entry after parsing */
+  getSHA256(user_text, strlen(user_text), (uint8_t *)&entry.user_hash);
+
+  handle = ykdbDatabaseOpen(YKDB_FILE);
+  if (handle == NULL) {
+    handle = ykdbDatabaseCreate(YKDB_FILE);
+    if (handle == NULL) {
+      printf("Unable to access the database: %s [%d]\n",YKDB_FILE,ykdb_errno);
+      goto OUT;
+    }
+  }
+  
+  /* can't add when one already exists */
+  if ( ykdbEntrySeekOnUserHash(handle, (uint8_t *)&entry.user_hash) == YKDB_SUCCESS ) {
+    printf("Entry already exist.\n");
+  } else {
+
+    DBG(("Adding Yubikey entry for %s\n", user_text));
+    puts("AES key [exactly 32 hex chars]: ");
+    password(key_text, 33, STAR, 0);
+    
+    if (strlen(key_text) == 32) {
+      if ( !checkHexString(key_text) )
+	hexDecode((uint8_t *)&entry.ticket.key, key_text, KEY_BYTE_SIZE);
+      else {
+	printf("Invalid key specified!\n");
+	goto OUT;
+      }
+    } else {
+      printf("Invalid key specified!\n");
+      goto OUT;
+    }
+
+#ifdef DEBUG
+    printf("AES Key: ");
+    for ( i=0; i<KEY_BYTE_SIZE ; i++ ) 
+      printf("%02x ", entry.ticket.key[i]);
+    printf("\n");
+#endif
+    /* check for an OTP first which will provide public UID and private UID */
+    /* with a valid key */
+
+    puts("OTP [max 200 char]: ");
+    password(otp, 201, CLEAR, 0);
+    
+    if (*otp != '\0') {
+      /* decode the OTP */
+      if ( parseOTP(&tkt, public_uid_bin, &public_uid_bin_size, otp, entry.ticket.key ) != 0 ) {
+	printf("Invalid OTP specified!\n");
+	goto OUT;
+      }
+
+      /* print public UID */
+      if (public_uid_bin_size > 0) {
+#ifdef DEBUG
+	printf("Using public UID: ");
+	for ( i=0; i<public_uid_bin_size; i++ )
+	  printf("%02x ", public_uid_bin[i]);
+	printf("\n");
+#endif
+      } else {
+	printf("Invalid OTP specified!\n");
+	goto OUT;
+      }
+
+      /* save in entry */
+      getSHA256(public_uid_bin, public_uid_bin_size, (uint8_t *)&entry.public_uid_hash);
+
+      /* extract the private UID */
+      memcpy(private_uid_bin, tkt.private_uid, PRIVATE_UID_BYTE_SIZE);
+      /* print private UID */
+      private_uid_bin_size = PRIVATE_UID_BYTE_SIZE;
+#ifdef DEBUG
+      printf("Using private UID: ");
+      for ( i=0; i<PRIVATE_UID_BYTE_SIZE; i++ )
+	printf("%02x ", tkt.private_uid[i]);
+      printf("\n");
+#endif
+      /* save in entry */
+      getSHA256(private_uid_bin, PRIVATE_UID_BYTE_SIZE, (uint8_t *)&entry.ticket.private_uid_hash);
+
+      /* extract counter information, because we can */
+      entry.ticket.last_use = tkt.use_counter;
+      entry.ticket.last_timestamp_lo = tkt.timestamp_lo;
+      entry.ticket.last_timestamp_hi = tkt.timestamp_hi;
+      entry.ticket.last_session = tkt.session_counter;
+    } else {
+      printf("NO OTP specifies\n");
+      goto OUT;
+    }
+
+#ifdef DEBUG
+      ykdbPrintEntry(&entry);
+#endif
+
+    /* encrypt entry as required */
+    safeSnprintf(ticket_enc_key, 256, "TICKET_ENC_KEY_BEGIN");
+    
+    /* add hex string format of public uid */
+    safeSnprintfAppend((char *)ticket_enc_key, 256, "|", public_uid_bin);
+    for(i=0; i<public_uid_bin_size; i++)
+      safeSnprintfAppend((char *)ticket_enc_key, 256, "%02x", public_uid_bin[i]);
+
+    safeSnprintfAppend(ticket_enc_key, 256, "|TICKET_ENC_KEY_END");
+
+#ifdef DEBUG
+    printf("Using entry encryption key: %s\n", ticket_enc_key);
+#endif
+
+    getSHA256(ticket_enc_key, strlen(ticket_enc_key), ticket_enc_hash);
+    aesEncryptCBC((uint8_t *)&entry.ticket, sizeof(ykdb_entry_ticket), ticket_enc_key, ticket_enc_key+16);
+
+    if ( ykdbEntryAdd(handle, &entry) != YKDB_SUCCESS ) {
+      printf("Unable to write to the database: %s [%d]\n", YKDB_FILE, ykdb_errno);
+      goto OUT;
+    }
+#ifdef DEBUG
+    ykdbPrintEntry(&entry);
+#endif
+  }
+  
+  /* close the db */
+  
+  DBG(("Completed successfully.\n"));
+
+ OUT:
+
+  if (handle) ykdbDatabaseClose(handle);
+  if (public_uid_text) free(public_uid_text); 
+  if (private_uid_text) free(private_uid_text); 
+
+  if ( ret == 0 ) {
+    DBG(("Saving Environment.\n"));
+    if ( envfs_save(NULL,NULL,0) ) {
+      printf("cannot save environment.\n");
+      ret = 1;
+    }
+#ifdef DEBUG
+  } else {
+    ykdbPrintEntry(&entry);
+#endif
+  }
+  
+  return ret;
+}
+
+BAREBOX_CMD_HELP_START(ykpasswd)
+BAREBOX_CMD_HELP_TEXT("Interactively asks for the Yubikey Credentials to initialize")
+BAREBOX_CMD_HELP_TEXT("the yubikey Database stored in " YKDB_FILE ". Zis enables use of")
+BAREBOX_CMD_HELP_TEXT("yubikey OTP token as passwd")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ykpasswd)
+  .cmd		= do_ykpasswd,
+  BAREBOX_CMD_DESC("Edit the Yubikey DB")
+  BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+  BAREBOX_CMD_HELP(cmd_ykpasswd_help)
+BAREBOX_CMD_END
diff --git a/common/Makefile b/common/Makefile
index 8cd0ab3..88f29ac 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -62,6 +62,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 obj-$(CONFIG_BOOT)		+= boot.o
+obj-$(CONFIG_YUBIKEY)           += yubikey.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/password.c b/common/password.c
index 74d328f..147607c 100644
--- a/common/password.c
+++ b/common/password.c
@@ -32,6 +32,7 @@
 #include <globalvar.h>
 #include <generated/passwd.h>
 #include <crypto/pbkdf2.h>
+#include <yubikey.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
 #define PASSWD_SUM "md5"
@@ -131,6 +132,23 @@ static int is_passwd_env_enable(void)
 	return 1;
 }
 
+static int is_passwd_yubikey_enable(void)
+{
+        int fd;
+        if (IS_ENABLED(CONFIG_YUBIKEY)) {
+	        fd = open(PASSWD_FILE, O_RDONLY);
+
+	        if (fd < 0)
+		        return 0;
+
+	        close(fd);
+
+	        return 1;
+        } else {
+	        return 0;
+        }
+}
+
 int passwd_env_disable(void)
 {
 	return unlink(PASSWD_FILE);
@@ -282,6 +300,13 @@ static int check_passwd(unsigned char *passwd, size_t length)
 	int ret = 0;
 	int hash_len;
 
+	if (IS_ENABLED(CONFIG_YUBIKEY)) {
+	        if ( yubikey_authenticate(passwd,length) ) {
+		        ret = 1;
+                        goto out;
+                }
+	}
+
 	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
 		hash_len = PBKDF2_LENGTH;
 	} else {
@@ -336,7 +361,7 @@ static int check_passwd(unsigned char *passwd, size_t length)
 err:
 	free(passwd1_sum);
 	digest_free(d);
-
+out:
 	return ret;
 }
 
@@ -415,7 +440,7 @@ void login(void)
 	unsigned char passwd[PASSWD_MAX_LENGTH];
 	int ret;
 
-	if (!is_passwd_default_enable() && !is_passwd_env_enable())
+	if (!is_passwd_default_enable() && !is_passwd_env_enable() && !is_passwd_yubikey_enable())
 		return;
 
 	if (logged_in)
diff --git a/common/yubikey.c b/common/yubikey.c
new file mode 100644
index 0000000..ad70b07
--- /dev/null
+++ b/common/yubikey.c
@@ -0,0 +1,195 @@
+/*
+ * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <password.h>
+#include <errno.h>
+#include <readkey.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <command.h>
+#include <magicvar.h>
+#include <clock.h>
+#include <init.h>
+#include <stdlib.h>
+#include <globalvar.h>
+#include <yubikey/yubikey_common.h>
+#include <yubikey/yubikey_db.h>
+#include <yubikey/yubikey_util.h>
+#include <envfs.h>
+
+#if defined(CONFIG_DEBUG_RSGW)
+#define DBG(x) do { printf x; } while (0)
+#else
+#define DBG(x)
+#endif
+
+#define MAXPASS 200
+
+int yubikey_authenticate ( unsigned char *otp, size_t length )
+{
+  int retval=0;
+
+  yk_ticket           tkt;
+  ykdb_entry          entry;
+  ykdb_h              *handle;
+    
+  uint8_t             tkt_private_uid_hash[32];
+
+  uint8_t             ticket_enc_key[256];
+  uint8_t             ticket_enc_hash[32];
+
+  uint8_t             public_uid_bin[PUBLIC_UID_BYTE_SIZE];
+  uint8_t             public_uid_bin_size = 0;
+
+  uint32_t            crc;
+  int                 delta_use;
+  int                 delta_session;
+  char                user[]="barebox";
+  int i;
+
+  DBG(("got OTP: %s\n", otp));
+  if ( length > MAXPASS ) {
+    DBG(("OTP too long\n"));
+    goto OUT;
+  }
+
+  DBG(("User: %s\n",user));
+
+  /* set additional default values for the entry after parsing */
+  getSHA256((uint8_t *)user, strlen(user), (uint8_t *)&entry.user_hash);
+         
+  /* perform initial parse to grab public UID */
+  parseOTP(&tkt, public_uid_bin, &public_uid_bin_size, (uint8_t *)otp, NULL);
+         
+  DBG (("Parsing OTP\n"));
+  /* OTP needs the public UID for lookup */
+  if (public_uid_bin_size <= 0) {
+    DBG (("public_uid has no length, OTP is invalid\n"));
+    goto OUT;
+  }
+
+  /* set additional default values for the entry after parsing */
+  getSHA256(public_uid_bin, public_uid_bin_size, (uint8_t *)&entry.public_uid_hash);
+
+  /* open the db or create if empty */
+  handle = ykdbDatabaseOpen(YKDB_FILE);
+  if (handle == NULL) {
+    DBG (("couldn't access database: %s\n", YKDB_FILE));
+    goto OUT;
+  }
+
+  /* seek to public UID if it exists */
+  i = ykdbEntrySeekOnUserHash(handle, (uint8_t *)&entry.user_hash);
+  if ( i != YKDB_SUCCESS ) {
+    ykdbDatabaseClose(handle);
+    DBG (("no entry for user: %s [%d]\n", user,i));
+    goto OUT;
+  }
+  /* grab the entry */
+  i = ykdbEntryGet(handle, &entry);
+  if ( i != YKDB_SUCCESS ) {
+    ykdbDatabaseClose(handle);
+    DBG (("error getting entry [%d]\n",i));
+  }
+
+  /* start building decryption entry as required */
+  safeSnprintf((char *)ticket_enc_key, 256, "TICKET_ENC_KEY_BEGIN");
+
+  /* add hex string format of public uid */
+  safeSnprintfAppend((char *)ticket_enc_key, 256, "|", public_uid_bin);
+  for(i=0; i<public_uid_bin_size; i++)
+    safeSnprintfAppend((char *)ticket_enc_key, 256, "%02x", public_uid_bin[i]);
+
+  /* close off decryption key text and generate encryption hash */
+  safeSnprintfAppend((char *)ticket_enc_key, 256, "|TICKET_ENC_KEY_END");
+  getSHA256(ticket_enc_key, strlen((char *)ticket_enc_key), ticket_enc_hash);
+
+  /* decrypt if flags indicate so */
+  aesDecryptCBC((uint8_t *)&entry.ticket, sizeof(ykdb_entry_ticket), ticket_enc_key, ticket_enc_key+16);
+  
+  /* perform real parse to grab real ticket, using the now unecrypted key */
+  parseOTP(&tkt, public_uid_bin, &public_uid_bin_size, (uint8_t *)otp, (uint8_t *)&entry.ticket.key);
+
+  DBG(("Ticket Enc: %s\n",ticket_enc_key));
+
+  crc = getCRC((uint8_t *)&tkt, sizeof(yk_ticket));
+  ENDIAN_SWAP_16(crc);
+  
+  /* no use continuing if the decoded OTP failed */
+  if ( crc != CRC_OK_RESIDUE ) {
+    ykdbDatabaseClose(handle);
+    DBG (("crc invalid: 0x%04x", crc));
+    goto OUT;
+  }
+
+  getSHA256(tkt.private_uid, PRIVATE_UID_BYTE_SIZE, (uint8_t *)&tkt_private_uid_hash);
+
+  if ( memcmp(&tkt_private_uid_hash, &entry.ticket.private_uid_hash, 32) ) {
+    ykdbDatabaseClose(handle);
+    DBG (("private uid mismatch"));
+    goto OUT;
+  }
+
+  /* check counter deltas */
+  delta_use = tkt.use_counter - entry.ticket.last_use;
+  delta_session = tkt.session_counter - entry.ticket.last_session;
+  
+  if ( delta_use < 0 ) {
+    ykdbDatabaseClose(handle);
+    DBG (("OTP is INVALID. Possible replay!!!"));
+    goto OUT;
+  }
+
+  if ( delta_use == 0 && delta_session <= 0 ) {
+    ykdbDatabaseClose(handle);
+    DBG (("OTP is INVALID. Possible replay!!!"));
+    goto OUT;
+  }
+
+  /* update the database entry with the latest counters */
+  entry.ticket.last_use = tkt.use_counter;
+  entry.ticket.last_timestamp_lo = tkt.timestamp_lo;
+  entry.ticket.last_timestamp_hi = tkt.timestamp_hi;
+  entry.ticket.last_session = tkt.session_counter;
+
+  /* re-encrypt and write to database */
+  aesEncryptCBC((uint8_t *)&entry.ticket, sizeof(ykdb_entry_ticket), ticket_enc_key, ticket_enc_key+16);
+
+  /* re-encrypt and write to database */
+  if ( ykdbEntryWrite(handle, &entry) != YKDB_SUCCESS ) {
+    ykdbDatabaseClose(handle);
+    DBG(("cannot write new database entry\n"));
+    goto OUT;
+  }
+
+  if (  envfs_save(NULL, NULL, 0) != 0 ) {
+    DBG(("cannot save environment\n"));
+    goto OUT;
+  }
+
+  /* auth ok */
+  retval=1;
+  
+ OUT:
+  return retval;
+}
+
+EXPORT_SYMBOL(yubikey_authenticate);
+
diff --git a/include/yubikey.h b/include/yubikey.h
new file mode 100644
index 0000000..1b5b534
--- /dev/null
+++ b/include/yubikey.h
@@ -0,0 +1,9 @@
+/*                                                                                                             * Copyright (c) 2017 Gerd Pauli HighConsulting GmbH & Co. KG
+ */
+
+#ifndef _YUBIKEY_H_
+#define _YUBIKEY_H_
+
+int yubikey_authenticate ( unsigned char *otp, size_t length );
+
+#endif
diff --git a/include/yubikey/yubikey_common.h b/include/yubikey/yubikey_common.h
new file mode 100644
index 0000000..4df743f
--- /dev/null
+++ b/include/yubikey/yubikey_common.h
@@ -0,0 +1,140 @@
+/*
+* YubiKey PAM Common API
+*
+* Copyright (C) 2008 Ian Firns      <firnsy@securixlive.com>
+* Copyright (C) 2008 SecurixLive    <dev@securixlive.com>
+* Copyright (C) 2017 HighConsulting <gp@high-consulting.de>
+*
+*
+* This program is free software; you can redistribute it and/or modify
+* it under the terms of the GNU General Public License as published by
+* the Free Software Foundation; either version 2 of the License, or
+* (at your option) any later version.
+*
+* This program is distributed in the hope that it will be useful,
+* but WITHOUT ANY WARRANTY; without even the implied warranty of
+* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+* GNU General Public License for more details.
+*
+* You should have received a copy of the GNU General Public License along
+* with this program; if not, write to the Free Software Foundation, Inc.,
+* 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+* http://www.gnu.org/copyleft/gpl.html
+*/
+
+/*
+**		Original Code adapted from YubiCo                                 **
+*/
+
+/*****************************************************************************************
+**							
+**		Y K D E F  -  Common Yubikey project header
+**							
+**		Date		/ Rev		/ Sign	/ Remark
+**		06-06-03	/ 0.9.0		/ J E	/ Main	
+**		06-08-25	/ 1.0.0		/ J E	/ Rewritten for final spec
+**		08-06-03	/ 1.3.0		/ J E	/ Added static OTP feature
+**										
+*****************************************************************************************/
+
+#ifndef	__YK_COMMON_H__
+#define	__YK_COMMON_H__
+
+#define YKDB_FILE				"/env/etc/yubikey"
+
+/* slot entries */
+#define	SLOT_CONFIG					1
+#define	SLOT_NAV					2
+#define	SLOT_DATA_SIZE				64
+
+#include <types.h>
+#include <linux/ctype.h>
+
+// Activation modifier of sessionUse field (bitfields not uses as they are not portable)
+#define	TICKET_ACT_HIDRPT		0x8000	// Ticket generated at activation by keyboard (scroll/num/caps)
+#define	TICKET_CTR_MASK			0x7fff	// Mask for useCtr value (except HID flag)
+
+// Configuration structure
+#define	PUBLIC_UID_BYTE_SIZE		16		/* max byte size of fixed public UID field */
+#define	KEY_BYTE_SIZE				16		/* byte size of AES key */
+#define	PRIVATE_UID_BYTE_SIZE		6		/* byte size of private UID field */
+#define	ACCESS_CODE_BYTE_SIZE		6		/* max byte size of access code to re-program device */
+
+/* ticket structure */
+typedef struct _yk_ticket {
+	uint8_t				private_uid[PRIVATE_UID_BYTE_SIZE];
+	uint16_t			use_counter;						
+	uint16_t			timestamp_lo;
+	uint8_t				timestamp_hi;			
+	uint8_t				session_counter;
+	uint16_t			random;
+	uint16_t			crc;
+} yk_ticket;
+
+typedef struct _yk_usb_config {
+	uint8_t				public_uid[PUBLIC_UID_BYTE_SIZE];	
+	uint8_t				private_uid[PRIVATE_UID_BYTE_SIZE];	
+	uint8_t				key[KEY_BYTE_SIZE];			
+	// Access code to re-program device
+	uint8_t				accCode[ACCESS_CODE_BYTE_SIZE];	
+	// Number of bytes in fixed field (0 if not used)
+	uint8_t				public_uid_size;	/* fixedSize */
+	// Program sequence number (ignored at programming - updated by firmware)
+	uint8_t				pgmSeq;						
+	// Ticket configuration flags
+	uint8_t				tktFlags;						
+	// General configuration flags
+	uint8_t				cfgFlags;						
+	// Counter offset value (ignored at programming - updated by firmware)
+	uint16_t			ctrOffs;						
+	// CRC16 value of all fields
+	uint16_t			crc;							
+} CONFIG;
+
+/* Ticket flags */
+#define	TKTFLAG_TAB_FIRST			0x01		// Send TAB before first part
+#define	TKTFLAG_APPEND_TAB1			0x02		// Send TAB after first part
+#define	TKTFLAG_APPEND_TAB2			0x04		// Send TAB after second part
+#define	TKTFLAG_APPEND_DELAY1		0x08		// Add 0.5s delay after first part
+#define	TKTFLAG_APPEND_DELAY2		0x10		// Add 0.5s delay after second part
+#define	TKTFLAG_APPEND_CR			0x20		// Append CR as final character
+
+// Configuration flags
+#define CFGFLAG_SEND_REF			0x01		// Send reference string (0..F) before data
+#define	CFGFLAG_TICKET_FIRST		0x02		// Send ticket first (default is fixed part)
+#define CFGFLAG_PACING_10MS			0x04		// Add 10ms intra-key pacing
+#define CFGFLAG_PACING_20MS			0x08		// Add 20ms intra-key pacing
+#define CFGFLAG_ALLOW_HIDTRIG		0x10		// Allow trigger through HID/keyboard
+#define CFGFLAG_STATIC_TICKET		0x20		// Static ticket generation
+
+// Navigation
+#define	MAX_URL		48
+
+typedef struct _yk_usb_nav {
+	uint8_t				scancode[MAX_URL];		// Scancode (lower 7 bits)
+	uint8_t				scanmod[MAX_URL >> 2];	// Modifier fields (packed 2 bits each)
+	uint8_t				flags;					// NAVFLAG_xxx flags
+	uint8_t				filler;					// Filler byte
+	uint16_t			crc;					// CRC16 value of all fields
+} NAV;
+
+#define	SCANMOD_SHIFT				0x80		// Highest bit in scancode
+#define	SCANMOD_ALT_GR				0x01		// Lowest bit in mod
+#define	SCANMOD_WIN					0x02		// WIN key
+
+// Navigation flags
+#define	NAVFLAG_INSERT_TRIG			0x01		// Automatic trigger when device is inserted
+#define NAVFLAG_APPEND_TKT			0x02		// Append ticket to URL
+#define	NAVFLAG_DUAL_KEY_USAGE		0x04		// Dual usage of key: Short = ticket  Long = Navigate
+
+// Status block
+typedef struct _yk_usb_status {
+	uint8_t				versionMajor;			// Firmware version information
+	uint8_t				versionMinor;
+	uint8_t				versionBuild;
+	uint8_t				pgmSeq;					// Programming sequence number. 0 if no valid configuration
+	uint16_t			touchLevel;				// Level from touch detector
+} STATUS;
+
+#endif /* __YK_COMMON_H__ */
+
diff --git a/include/yubikey/yubikey_db.h b/include/yubikey/yubikey_db.h
new file mode 100644
index 0000000..7042000
--- /dev/null
+++ b/include/yubikey/yubikey_db.h
@@ -0,0 +1,101 @@
+/*
+ * YubiKey DB API
+ *
+ * Copyright (C) 2008 SecurixLive	dev@securixlive.com
+ * Copyright (C) 2008 Ian Firns		firnsy@securixlive.com
+ * Copyright (C) 2017 Gerd Pauli        gp@high-consulting.de   
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#ifndef __YK_DB_H__
+#define __YK_DB_H__
+
+#define YKDB_MAGIC		"YKDB"
+#define YKDB_MAGIC_SIZE		4
+#define YKDB_VERSION		42
+#define YKDB_KEY_BYTE_SIZE	16
+
+#define YKDB_SUCCESS		0
+#define YKDB_ERR_ARGS		1
+#define YKDB_ERR_IO		2
+#define YKDB_ERR_SEEK		3
+#define YKDB_ERR_LOCK		4
+#define YKDB_ERR_DB_INV		5
+#define YKDB_ERR_DB_EMPTY	6
+
+extern int ykdb_errno;
+
+/* data types */
+struct _ykdb_header {
+  uint8_t  magic[YKDB_MAGIC_SIZE];
+  uint32_t version;
+  uint32_t entry_count;
+  uint8_t  reserved[4];
+};
+typedef struct _ykdb_header ykdb_header;
+
+struct _ykdb_entry_ticket {
+  uint8_t  key[YKDB_KEY_BYTE_SIZE];
+  uint8_t  private_uid_hash[32];
+  uint16_t last_use;
+  uint8_t  last_timestamp_hi;
+  uint16_t last_timestamp_lo;
+  uint8_t  last_session;
+  uint8_t  reserved[40];
+};
+typedef struct _ykdb_entry_ticket ykdb_entry_ticket;
+
+struct _ykdb_entry {
+  uint8_t user_hash[32];
+  uint8_t public_uid_hash[32];
+  uint32_t flags;
+  ykdb_entry_ticket	ticket;
+};
+typedef struct _ykdb_entry ykdb_entry; 
+
+struct _ykdb_handle {
+  int file_descriptor;
+  uint32_t cur_entry;
+  ykdb_header header;
+};
+typedef struct _ykdb_handle ykdb_h;
+
+
+/* database API */
+ykdb_h *ykdbDatabaseOpen(const char *);
+ykdb_h *ykdbDatabaseCreate(const char *);
+int ykdbDatabaseClose(ykdb_h *);
+
+uint32_t ykdbDatabaseEntryCountGet(ykdb_h *);
+
+int ykdbEntryNext(ykdb_h *);
+int ykdbEntryPrev(ykdb_h *);
+int ykdbEntryGet(ykdb_h *, ykdb_entry *);
+int ykdbEntrySeekOnIndex(ykdb_h *, uint32_t);
+int ykdbEntrySeekOnUserHash(ykdb_h *, uint8_t *);
+int ykdbEntrySeekOnPublicHash(ykdb_h *, uint8_t *);
+int ykdbEntryGetIndex(ykdb_h *, uint32_t *);
+int ykdbEntryAdd(ykdb_h *, ykdb_entry *);
+int ykdbEntryAdd2(ykdb_h *, uint8_t *, uint8_t *, uint8_t, ykdb_entry_ticket *);
+int ykdbEntryWrite(ykdb_h *, ykdb_entry *);
+int ykdHeaderWrite(ykdb_h *);
+int ykdbEntryDelete(ykdb_h *);
+int ykdbEntrySeekEmpty(ykdb_h *);
+
+void ykdbPrintEntry(ykdb_entry *entry);
+
+#endif /* __YK_DB_H__ */
diff --git a/include/yubikey/yubikey_util.h b/include/yubikey/yubikey_util.h
new file mode 100644
index 0000000..3d6ab5c
--- /dev/null
+++ b/include/yubikey/yubikey_util.h
@@ -0,0 +1,68 @@
+/*
+* YubiKey PAM Utils Module
+*
+* Copyright (C) 2008 SecurixLive	dev@securixlive.com
+* Copyright (C) 2008 Ian Firns		firnsy@securixlive.com
+* Copyright (C) 2017 Gerd Pauli         gp@high-consulting.de
+*
+* This program is free software; you can redistribute it and/or modify
+* it under the terms of the GNU General Public License as published by
+* the Free Software Foundation; either version 2 of the License, or
+* (at your option) any later version.
+*
+* This program is distributed in the hope that it will be useful,
+* but WITHOUT ANY WARRANTY; without even the implied warranty of
+* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+* GNU General Public License for more details.
+*
+* You should have received a copy of the GNU General Public License along
+* with this program; if not, write to the Free Software Foundation, Inc.,
+* 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+* http://www.gnu.org/copyleft/gpl.html
+*/
+
+#ifndef	__YK_UTIL_H__
+#define	__YK_UTIL_H__
+
+#include <yubikey/yubikey_common.h>
+
+#ifdef __BIG_ENDIAN__
+#define ENDIAN_SWAP_16(x) x = ((x) >> 8) | ((x) << 8)
+#else
+#define ENDIAN_SWAP_16(x)
+#endif
+
+#define SHA256_DIGEST_SIZE	(8*sizeof(uint32_t))
+#define MODHEX_MAP			"cbdefghijklnrtuv"
+#define HEX_MAP				"0123456789abcdef"
+#define CRC_OK_RESIDUE		0xf0b8
+
+/* public API */
+int safeSnprintf(char *buf, size_t buf_size, const char *format, ...);
+int safeSnprintfAppend(char *buf, size_t buf_size, const char *format, ...);
+int safeStrnlen(const char *buf, int buf_size);
+
+int checkHexString(const uint8_t *);
+int checkModHexString(const uint8_t *);
+int checkOTPCompliance(const uint8_t *, uint32_t);
+
+/* cipher/ routines */
+void aesEncryptBlock(uint8_t *, const uint8_t *);
+void aesDecryptBlock(uint8_t *, const uint8_t *);
+void aesEncryptCBC(uint8_t *, uint32_t, const uint8_t *, const uint8_t *);
+void aesDecryptCBC(uint8_t *, uint32_t, const uint8_t *, const uint8_t *);
+void getSHA256(const uint8_t *, uint32_t, uint8_t *);
+uint16_t getCRC(const uint8_t *, uint32_t);
+
+/* yubikey routines */
+uint32_t hexDecode(uint8_t *, const uint8_t *, uint32_t);
+uint32_t modHexDecode(uint8_t *, const uint8_t *, uint32_t);
+uint32_t modHexEncode(uint8_t *, const uint8_t *, uint32_t);
+int parseOTP(yk_ticket *, uint8_t *, uint8_t *, const uint8_t *, const uint8_t *);
+
+void printTicket(yk_ticket *);
+
+
+
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index c0694ca..137d6f5 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -85,6 +85,10 @@ config STMP_DEVICE
 config CCRYPTLIB
         bool
 
+config YUBIKEY
+        bool "Hadle yubikey OTP. Enables Keystore"
+        select CRYPTO_KEYSTORE
+
 config RATP
 	select CRC16
 	bool
diff --git a/lib/Makefile b/lib/Makefile
index d32e102..edef2d5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -60,3 +60,4 @@ obj-$(CONFIG_RATP)	+= ratp.o
 obj-y			+= list_sort.o
 obj-y			+= int_sqrt.o
 obj-$(CONFIG_CCRYPTLIB) += ccryptlib/
+obj-$(CONFIG_YUBIKEY)   += yubikey/
diff --git a/lib/yubikey/Makefile b/lib/yubikey/Makefile
new file mode 100644
index 0000000..8958463
--- /dev/null
+++ b/lib/yubikey/Makefile
@@ -0,0 +1,4 @@
+obj-$(CONFIG_YUBIKEY) += yubikey_db.o
+obj-$(CONFIG_YUBIKEY) += yubikey_util.o
+
+
diff --git a/lib/yubikey/yubikey_db.c b/lib/yubikey/yubikey_db.c
new file mode 100644
index 0000000..bcb2961
--- /dev/null
+++ b/lib/yubikey/yubikey_db.c
@@ -0,0 +1,649 @@
+/*
+ * YubiKey DB API
+ *
+ * Copyright (C) 2008 SecurixLive	dev@securixlive.com
+ * Copyright (C) 2008 Ian Firns		firnsy@securixlive.com
+ * Copyright (C) 2017 Gerd Pauli        gp@high-consulting.de 
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <errno.h>
+#include <libfile.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <progress.h>
+#include <linux/stat.h>
+
+#include <yubikey/yubikey_db.h>
+
+#if defined(CONFIG_DEBUG_RSGW)
+#define DBG(x) do { printf x; } while (0)
+#else
+#define DBG(x)
+#endif
+
+#define YKDB_ERROR(code) ykdb_errno=code
+#define YKDB_ERROR_RET(code) ykdb_errno=code; return code;
+
+int ykdb_errno = 0;
+
+/* private DB functions */
+
+int ykdbHeaderWrite(ykdb_h *handle) {
+  off_t	old_pos;
+
+  /* check arguments sanity */
+  if (handle == NULL) {
+    YKDB_ERROR_RET(YKDB_ERR_ARGS);
+  }
+	
+  old_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+
+  /* seek to database header (ie. start of file) */
+  if ( lseek(handle->file_descriptor, 0, SEEK_SET) == -1 ) {
+    YKDB_ERROR_RET(YKDB_ERR_IO);
+  }
+  
+  /* write header to disk */
+  if ( write(handle->file_descriptor, &handle->header, sizeof(ykdb_header)) != sizeof(ykdb_header) ) {
+    YKDB_ERROR_RET(YKDB_ERR_IO);
+  }
+  
+  /* return to old position */
+  if ( lseek(handle->file_descriptor, old_pos, SEEK_SET) == -1 ) {
+    YKDB_ERROR_RET(YKDB_ERR_IO);
+  }
+  
+  DBG(("ykdbHeaderWrite aktpos: %lu\n",old_pos));
+
+  return YKDB_SUCCESS;
+}
+
+
+/* public API implementation */
+ykdb_h *ykdbDatabaseOpen(const char *path) {
+  ykdb_h	*handle;
+#if defined(CONFIG_DEBUG_RSGW)
+  uint8_t *buf;
+  int i;
+#endif
+  /* check argument sanity */
+  if (path == NULL) {
+    YKDB_ERROR(YKDB_ERR_ARGS);
+    return NULL;	
+  }
+
+  /* allocate the db handle */
+  handle = (ykdb_h *)malloc(sizeof(ykdb_h));
+  memset(handle,0,sizeof(ykdb_h));
+
+  if (handle == NULL) {
+    return NULL;
+  }
+	
+  /* open the db */
+  handle->file_descriptor = open(path, O_RDWR);
+  if (handle->file_descriptor == -1) {
+    free(handle);
+    
+    YKDB_ERROR(YKDB_ERR_IO);
+    return NULL;
+  }
+
+  /* read header */
+  if ( read(handle->file_descriptor, &handle->header, sizeof(ykdb_header)) != sizeof (ykdb_header) ) {
+    close(handle->file_descriptor);
+    free(handle);
+    
+    YKDB_ERROR(YKDB_ERR_IO);
+    return NULL;
+  }
+
+  /* check magic and version compatibility */
+  if ( memcmp(&handle->header.magic, YKDB_MAGIC, YKDB_MAGIC_SIZE) != 0 ||
+       handle->header.version != YKDB_VERSION ) {
+    close(handle->file_descriptor);
+    free(handle);
+    
+    YKDB_ERROR(YKDB_ERR_DB_INV);
+    return NULL;
+  }
+  
+  DBG(("ykdbDatabaseOpen:\n"));
+  DBG(("   header length + aktpos: %lu\n",sizeof (ykdb_header)));
+  DBG(("   ykdb fd: %d\n",handle->file_descriptor));
+  DBG(("   ykdb cur_entry: %u\n",handle->cur_entry));
+  DBG(("   handle %p cur_entry %p\n",handle,&handle->cur_entry));
+#if defined(CONFIG_DEBUG_RSGW)
+  buf=(uint8_t *)handle;
+  for(i=0; i< sizeof(ykdb_h); i++) {
+    printf("%02x ", buf[i]);
+  }
+  printf("\n\n");
+
+#endif
+
+  return handle;
+}
+
+ykdb_h *ykdbDatabaseCreate(const char *path) {
+  struct _ykdb_handle	*handle;
+  
+  /* check argument sanity */
+  if (path == NULL) {
+    YKDB_ERROR(YKDB_ERR_ARGS);
+    return NULL;	
+  }
+  
+  /* allocate the db handle */
+  handle = (struct _ykdb_handle *)malloc(sizeof(struct _ykdb_handle));
+  if (handle == NULL) {
+    return NULL;
+  }
+  memset(handle,0,sizeof(struct _ykdb_handle));
+  
+  /* create the database file */
+  handle->file_descriptor = open(path, O_RDWR | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
+  if (handle->file_descriptor == -1) {
+    free(handle);
+    YKDB_ERROR(YKDB_ERR_IO);
+    return NULL;
+  }
+  
+  handle->cur_entry = 0;
+
+  /* build the header */
+  memcpy(handle->header.magic, YKDB_MAGIC, YKDB_MAGIC_SIZE);
+  handle->header.version = YKDB_VERSION;
+  handle->header.entry_count = 0;
+
+  /* write the header to disk */
+  ykdbHeaderWrite(handle);
+  DBG(("ykdbDatabaseCreate\n"));
+
+  return handle;
+}
+
+int ykdbDatabaseClose(ykdb_h *handle) {
+  int ret;
+
+  /* check arguments sanity */
+  if (!handle)  {
+    YKDB_ERROR_RET(YKDB_ERR_ARGS);
+  }
+
+  /* write header to disk */
+  if ( ( ret=ykdbHeaderWrite(handle) ) != 0 ) {
+    return ret;
+  }
+															
+  /* close the file descriptor*/
+  if ( close(handle->file_descriptor) != 0 ) {
+    YKDB_ERROR_RET(YKDB_ERR_IO);
+  }
+  
+  /* free handle */
+  free(handle);
+  
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntryNext(ykdb_h *handle)
+{
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+
+  /* check arguments sanity */
+  if (handle == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* check were not already at the end */	
+  if (handle->cur_entry == (handle->header.entry_count-1))
+    {
+      YKDB_ERROR_RET(YKDB_ERR_SEEK);
+    }
+
+  /* seek to next entry */
+  if ( lseek(handle->file_descriptor, sizeof(ykdb_entry), SEEK_CUR) == -1)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);	
+    }
+
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntryNext: aktpos: %lu\n",akt_pos));
+#endif
+
+  /* update handle */
+  handle->cur_entry++;
+
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntryGet(ykdb_h *handle, ykdb_entry *entry)
+{
+  int ret;
+  off_t old_pos;
+
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+  /* check arguments sanity */
+  if (handle == NULL || entry == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  old_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+
+#if defined(CONFIG_DEBUG_RSGW)
+  DBG(("ykdbEntryGet: aktpos: %lu\n",old_pos));
+  DBG(("ykdbEntryGet: trying to read %lu bytes\n",sizeof(ykdb_entry)));
+#endif
+
+  /* read entry from disk */
+  if ( (ret=read(handle->file_descriptor, entry, sizeof(ykdb_entry))) != sizeof(ykdb_entry))
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  DBG(("ykdbEntryGet: got %d bytes\n",ret));
+  
+  /* rewind file position since a get does not increment */
+  if ( lseek(handle->file_descriptor, old_pos, SEEK_SET) == -1 )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntryGet: aktpos: %lu\n",akt_pos));
+#endif
+
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntrySeekOnIndex(ykdb_h *handle, uint32_t idx)
+{
+  uint32_t			file_seek_position;
+
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+  /* check arguments sanity */
+  if (handle == NULL || idx < 0) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* calculate seek position and go there */
+  file_seek_position = sizeof(ykdb_header) + (idx * sizeof(ykdb_entry));
+
+  if ( lseek(handle->file_descriptor, file_seek_position, SEEK_SET) == -1)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);	
+    }
+	
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntrySeekOnIndex: aktpos: %lu\n",akt_pos));
+#endif
+
+  /* update handle */
+  handle->cur_entry = idx;
+  DBG(("ykdbEntrySeekOnIndex: current_entry %d\n",idx));
+
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntryGetIndex(ykdb_h *handle, uint32_t *idx)
+{
+  /* check arguments sanity */
+  if (handle == NULL || idx == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  *idx = handle->cur_entry;
+	
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntryDelete(ykdb_h *handle)
+{
+  uint32_t			file_seek_position;
+  ykdb_entry			empty_entry;
+
+  /* check arguments sanity */
+  if (handle == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+
+  /* set all values to ff */
+  memset(&empty_entry, 0xff, sizeof(ykdb_entry));
+
+  /* write empty entry to disk */
+  if ( write(handle->file_descriptor, &empty_entry, sizeof(ykdb_entry)) != sizeof(ykdb_entry) )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* update the header */
+  handle->header.entry_count--;
+
+  /* reset seek pointer to end of header */
+  file_seek_position = sizeof(ykdb_header);
+  handle->cur_entry = -1;
+
+  if ( lseek(handle->file_descriptor, file_seek_position, SEEK_SET) == -1)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* reset back to zero */
+  return YKDB_SUCCESS;
+}
+
+int ykdbEntryAdd(ykdb_h *handle, ykdb_entry *entry)
+{
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+  /* check arguments sanity */
+  if (handle == NULL || entry == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+
+  /* search for a previously deleted entry (ie. empty entry) */
+  if ( ykdbEntrySeekEmpty(handle) != YKDB_SUCCESS )
+    {
+      /* add to end of file */
+      if ( lseek(handle->file_descriptor, 0, SEEK_END) == -1 )
+	{
+	  YKDB_ERROR_RET(YKDB_ERR_IO);
+	}
+    }
+
+  /* write entry to disk */
+  if ( write(handle->file_descriptor, entry, sizeof(ykdb_entry)) != sizeof(ykdb_entry) )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* update the header */
+  handle->header.entry_count++;
+
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntryAdd: aktpos: %lu\n",akt_pos));
+#endif
+
+  return ykdbEntrySeekOnIndex(handle, handle->cur_entry);
+}
+
+int ykdbEntryWrite(ykdb_h *handle, ykdb_entry *entry)
+{
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+  /* check arguments sanity */
+  if (handle == NULL || entry == NULL) 
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* write entry to disk */
+  if ( write(handle->file_descriptor, entry, sizeof(ykdb_entry)) != sizeof(ykdb_entry) )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntryWrite: aktpos: %lu\n",akt_pos));
+#endif
+
+return YKDB_SUCCESS;
+
+}
+
+int ykdbEntrySeekEmpty(ykdb_h *handle)
+{
+  int					i;
+  ykdb_entry			entry;
+#if defined(CONFIG_DEBUG_RSGW)
+  off_t akt_pos;
+#endif
+
+  /* check argument sanity */
+  if (handle == NULL)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* start at beginning of database */
+  if ( ykdbEntrySeekOnIndex(handle, 0) != YKDB_SUCCESS )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* loop looking for public hash match */
+  for (i=0; i<handle->header.entry_count; i++, ykdbEntryNext(handle) )
+    {
+      ykdbEntryGet(handle, &entry);
+      if ( entry.flags == 0xffffffff )
+	return YKDB_SUCCESS;
+    }
+
+#if defined(CONFIG_DEBUG_RSGW)
+  akt_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+  DBG(("ykdbEntrySeekEmpty: aktpos: %lu\n",akt_pos));
+#endif
+
+  return YKDB_ERR_SEEK;
+}
+
+/* Extended functions */
+int ykdbEntrySeekOnUserHash(ykdb_h *handle, uint8_t *user_hash)
+{
+  int					i;
+  off_t				old_pos;
+  ykdb_entry			entry;
+
+  DBG(("ykdbEntrySeekOnUserHash entry_count: %d\n",handle->header.entry_count));
+
+  /* check argument sanity */
+  if (handle == NULL || user_hash == NULL)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* save old position in case of fail */
+  old_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+
+  /* start at beginning of database */
+  if ( ykdbEntrySeekOnIndex(handle, 0) != YKDB_SUCCESS )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* loop looking for public hash match */
+  for (i=0; i<handle->header.entry_count; i++, ykdbEntryNext(handle) )
+    {
+      DBG(("ykdbEntrySeekOnUserHash testing: %d\n",i));
+ 
+      ykdbEntryGet(handle, &entry);
+
+      if ( memcmp(entry.user_hash, user_hash, 32) == 0 )
+	{
+	  DBG(("ykdbEntrySeekOnUserHash found: %d\n",i));
+	  return YKDB_SUCCESS;
+	}
+    }
+
+  /* since the record was not found, return to old position */
+  if ( lseek(handle->file_descriptor, old_pos, SEEK_SET) == -1 )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+  
+  DBG(("ykdbEntrySeekOnUserHash aktpos: %lu\n",old_pos));
+
+  return YKDB_ERR_SEEK;
+}
+
+int ykdbEntrySeekOnPublicHash(ykdb_h *handle, uint8_t *public_uid_hash)
+{
+  int					i;
+  off_t				old_pos;
+  ykdb_entry			entry;
+
+  /* check argument sanity */
+  if (handle == NULL || public_uid_hash == NULL)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_ARGS);
+    }
+	
+  /* check if databse is empty */
+  if (handle->header.entry_count == 0)
+    {
+      YKDB_ERROR_RET(YKDB_ERR_DB_EMPTY);
+    }
+
+  /* save old position in case of fail */
+  old_pos = lseek(handle->file_descriptor, 0, SEEK_CUR);
+
+  /* start at beginning of database */
+  if ( ykdbEntrySeekOnIndex(handle, 0) != YKDB_SUCCESS )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  /* loop looking for public hash match */
+  for (i=0; i<handle->header.entry_count; i++, ykdbEntryNext(handle) )
+    {
+      ykdbEntryGet(handle, &entry);
+
+      if ( memcmp(entry.public_uid_hash, public_uid_hash, 32) == 0 )
+	{
+	  return YKDB_SUCCESS;
+	}
+    }
+
+  /* since the record was not found, return to old position */
+  if ( lseek(handle->file_descriptor, old_pos, SEEK_SET) == -1 )
+    {
+      YKDB_ERROR_RET(YKDB_ERR_IO);
+    }
+
+  DBG(("ykdbEntrySeekOnPublicHash aktpos: %lu\n",old_pos));
+  
+  return YKDB_ERR_SEEK;
+}
+
+uint32_t ykdbDatabaseEntryCountGet(ykdb_h *handle)
+{
+  /* check argument sanity */
+  if (handle == NULL)
+    {
+      return -1;
+    }
+
+  return handle->header.entry_count;
+}
+
+void ykdbPrintEntry(ykdb_entry *entry)
+{
+  int i;
+	
+  printf("ykdb_entry {\n");
+  printf("  user_hash           = ");
+  for (i=0; i<32; i++)
+    printf("%02x ", entry->user_hash[i]);
+  printf("\n");
+  printf("  public_uid_hash     = ");
+  for (i=0; i<32; i++)
+    printf("%02x ", entry->public_uid_hash[i]);
+  printf("\n");
+  printf("  ticket {\n");
+  printf("    key               = ");
+  for (i=0; i<16; i++)
+    printf("%02x ", entry->ticket.key[i]);
+  printf("\n");
+  printf("    private_uid_hash  = ");
+  for (i=0; i<32; i++)
+    printf("%02x ", entry->ticket.private_uid_hash[i]);
+  printf("\n");
+  printf("    last_use          = %04x\n", entry->ticket.last_use);
+  printf("    last_timestamp_lo = %04x\n", entry->ticket.last_timestamp_lo);
+  printf("    last_timestamp_hi = %02x\n", entry->ticket.last_timestamp_hi);
+  printf("    last_session      = %02x\n", entry->ticket.last_session);
+  printf("  }\n");
+  printf("}\n");
+}
+
+
diff --git a/lib/yubikey/yubikey_util.c b/lib/yubikey/yubikey_util.c
new file mode 100644
index 0000000..a648cd2
--- /dev/null
+++ b/lib/yubikey/yubikey_util.c
@@ -0,0 +1,1077 @@
+/*
+ * YubiKey PAM Utils Module
+ *
+ * Copyright (C) 2008 SecurixLive	dev@securixlive.com
+ * Copyright (C) 2008 Ian Firns		firnsy@securixlive.com
+ * Copyright (C) 2017 Gerd Pauli        gp@high-consulting.de 
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/*
+ *		Original Code adapted from YubiCo                                 **
+ *						and 
+
+ * A contribution to the open-source movement.
+ *  Jean-Luc Cooke <jlcooke@certainkey.com>
+ *     CertainKey Inc.
+ *     Ottawa Ontario Canada
+ *
+ *  Created: July 20th, 2001
+ *
+ */
+
+/* reference: http://csrc.nist.gov/encryption/shs/dfips-180-2.pdf */
+
+#include <common.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <errno.h>
+#include <libfile.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <progress.h>
+#include <linux/stat.h>
+
+#include <yubikey/yubikey_common.h>
+#include <yubikey/yubikey_util.h>
+
+
+/* start SHA256 requisites - lookup table, defines, etc */
+typedef struct _sha256_context {
+  uint32_t			state[8];
+  uint8_t			buf[128];
+  uint32_t			count[2];
+} sha256_context;
+
+#define ROR32(a,b) (( ((a) >> ((b) & 31)) | ((a) << (32-((b) & 31))) ))
+
+#define Ch(x,y,z)   ((x & y) ^ (~x & z))
+#define Maj(x,y,z)  ((x & y) ^ (x & z) ^ (y & z))
+
+#define e0(x)       (ROR32(x,2) ^ ROR32(x,13) ^ ROR32(x,22))
+#define e1(x)       (ROR32(x,6) ^ ROR32(x,11) ^ ROR32(x,25))
+#define s0(x)       (ROR32(x,7)  ^ ROR32(x,18)  ^ (x >> 3))
+#define s1(x)       (ROR32(x,17) ^ ROR32(x,19) ^ (x >> 10))
+
+#define H0			0x6a09e667
+#define H1			0xbb67ae85
+#define H2			0x3c6ef372
+#define H3			0xa54ff53a
+#define H4			0x510e527f
+#define H5			0x9b05688c
+#define H6			0x1f83d9ab
+#define H7			0x5be0cd19
+
+const uint32_t sha256_K[64] = {
+  0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
+  0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
+  0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
+  0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
+  0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
+  0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
+  0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
+  0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
+};
+
+#define LOAD_OP(I)				\
+  {						\
+    t1  = input[(4*I)  ] & 0xff; t1<<=8;	\
+    t1 |= input[(4*I)+1] & 0xff; t1<<=8;	\
+    t1 |= input[(4*I)+2] & 0xff; t1<<=8;	\
+    t1 |= input[(4*I)+3] & 0xff;		\
+    W[I] = t1;					\
+  }
+
+#define BLEND_OP(I)					\
+  W[I] = s1(W[I-2]) + W[I-7] + s0(W[I-15]) + W[I-16];
+
+const uint8_t sha256_padding[128] = {
+  0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+};
+/* end SHA256 requisites */
+
+/* start AES requisites - lookup table, defines, etc */
+#define AES_ROUNDS			10
+#define AES_BLOCK_SIZE			16
+
+static const unsigned char rcon[] = {
+  0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36 
+};
+
+static const unsigned char sbox[] = {
+  0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 
+  0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76, 
+  0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 
+  0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, 
+  0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 
+  0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15, 
+  0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 
+  0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75, 
+  0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 
+  0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84, 
+  0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 
+  0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf, 
+  0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 
+  0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8, 
+  0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 
+  0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2, 
+  0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 
+  0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73, 
+  0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 
+  0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb, 
+  0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 
+  0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79, 
+  0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 
+  0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08, 
+  0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 
+  0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a, 
+  0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 
+  0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e, 
+  0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 
+  0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf, 
+  0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 
+  0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
+};
+
+static const unsigned char inv_sbox[] = {
+  0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 
+  0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb, 
+  0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 
+  0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb, 
+  0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 
+  0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e, 
+  0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 
+  0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25, 
+  0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 
+  0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92, 
+  0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 
+  0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84, 
+  0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 
+  0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06, 
+  0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 
+  0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b, 
+  0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 
+  0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73, 
+  0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 
+  0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e, 
+  0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 
+  0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b, 
+  0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 
+  0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4, 
+  0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 
+  0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f, 
+  0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 
+  0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef, 
+  0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 
+  0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61, 
+  0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 
+  0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d
+};
+
+uint8_t xtime(unsigned char b) { 
+  return (b & 0x80) ? ((b << 1) ^ 0x1b) : (b << 1); 
+}
+
+/* end AES requisites */
+
+
+/*
+** checkHexString
+**
+** Description:
+**   Identifies whether a string is a valid hex string.
+**
+** Arguments:
+**   const uint8_t *src			source containing hex characters
+**
+** Return
+**   0 if source is a hex string, non-zero otherwise.
+*/
+int checkHexString(const uint8_t *src)
+{
+  char trans[] = HEX_MAP;
+  uint32_t src_size = strlen(src);
+  uint32_t i;
+ 
+  for(i=0; i<src_size; i++, src++) {
+    if ( strchr(trans, tolower(*src)) == NULL )
+      return 1;
+  }
+  return 0;
+}
+
+
+/*
+** checkModHexString
+**
+** Description:
+**   Identifies whether a string is a valid modhex string.
+**
+** Arguments:
+**   const uint8_t *src			source containing modhex characters
+**
+** Return
+**   0 if source is a modhex string, non-zero otherwise.
+*/
+int checkModHexString(const uint8_t *src) {
+  char trans[] = MODHEX_MAP;
+  uint32_t src_size = strlen(src);
+  uint32_t i;
+ 
+  for(i=0; i<src_size; i++, src++) {
+    if ( strchr(trans, tolower(*src)) == NULL )
+      return 1;
+  }
+  
+  return 0;
+}
+
+
+/*
+** checkOTPCompliance
+**
+** Description:
+**   Identifies whether the string is compliant with the length and character
+** set.
+**
+** Arguments:
+**   const uint8_t *otp			source containing modhex characters
+**   uint8_t min_pub_uid_len  	minimum length of the public_uid (fixed portion)
+**
+** Return
+**   0 if source is compliant, non-zero otherwise.
+*/
+int checkOTPCompliance(const uint8_t *otp, uint32_t min_pub_uid_len)
+{
+  uint32_t			otp_size;
+	
+  /* check if OTP exists */
+  if ( otp == NULL )
+    return -1;
+
+  otp_size = strlen(otp);
+
+  /* check length */
+  if ( otp_size < (min_pub_uid_len + 32) )
+    return -2;
+
+  /* check modhex character set */
+  if ( checkModHexString(otp) )
+    return -3;
+
+  return 0;
+}
+
+/*
+** hexDecode
+**
+** Description:
+**   Decodeds a hex string into binary. Due to a hex character only
+** representing 4 bits of information, the source should be twice as long as
+** the desired output size.
+**
+** Arguments:
+**   uint8_t *dst				destination of decoded binary information
+**   const uint8_t *src			source containing hex characters
+**   uint32_t dst_size			number of bytes to read into destination buffer
+**
+** Return
+**   Number of modhex characters processed
+*/
+uint32_t hexDecode(uint8_t *dst, const uint8_t *src, uint32_t dst_size)
+{
+  static const char trans[] = HEX_MAP;
+  uint8_t b;
+  uint32_t i, processed = 0;
+  uint32_t src_size = strlen(src);
+  const char *p1;
+
+  /* truncate source if destination is too short */
+  if ((dst_size << 1) < src_size)
+    src_size = dst_size << 1;
+  
+  for (i = 0; i < src_size; i++, src++) {
+    /* translate the modhex character, set to 0 if not found */
+    if ((p1 = strchr(trans, tolower(*src))))
+      b = (uint8_t) (p1 - trans);
+    else
+      b = 0;
+    
+    if (i % 2) {
+      *dst = (*dst << 4) | b;
+      dst++;
+      processed++;
+    } else
+      *dst = b;
+  }
+  
+  return processed;
+}
+
+EXPORT_SYMBOL(hexDecode);
+
+/*
+** modHexDecode
+**
+** Description:
+**   Decodeds a modhex string into binary. Due to a modhex character only
+** representing 4 bits of information, the source should be twice as long as
+** the desired output size.
+**
+** Arguments:
+**   uint8_t *dst				destination of decoded binary information
+**   const uint8_t *src			source containing modhex characters
+**   uint32_t dst_size			number of bytes to read into destination buffer
+**
+** Return
+**   Number of modhex characters processed
+*/
+uint32_t modHexDecode(uint8_t *dst, const uint8_t *src, uint32_t dst_size)
+{
+  static const char trans[] = MODHEX_MAP;
+  uint8_t b;
+  uint32_t i, processed = 0;
+  uint32_t src_size = strlen(src);
+  const char *p1;
+
+  /* truncate source if destination is too short */
+  if ((dst_size << 1) < src_size)
+    src_size = dst_size << 1;
+
+  for (i = 0; i < src_size; i++, src++) {
+    /* translate the modhex character, set to 0 if not found */
+    if ((p1 = strchr(trans, tolower(*src))))
+      b = (uint8_t) (p1 - trans);
+    else
+      b = 0;
+    
+    if (i % 2) {
+      *dst = (*dst << 4) | b;
+      dst++;
+      processed++;
+    } else
+      *dst = b;
+  }
+  
+  return processed;
+}
+
+EXPORT_SYMBOL(modHexDecode);
+
+/*
+** aesEncryptCBC
+**
+** Description:
+**   CBC Encryption of any data size.
+**
+** Arguments:
+**   uint8_t * data				data to encrypt
+**   uint32_t data_zise			length of data to encrypt
+**   const uint8_t *key			encryption key
+**   const uint8_t *iv			IV for first block
+*/
+void aesEncryptCBC(uint8_t *data, uint32_t data_size, const uint8_t *key, const uint8_t *iv) {
+  const uint8_t		*ivec = iv;
+  uint32_t			i;
+  
+  
+  while (data_size >= AES_BLOCK_SIZE) {
+    for(i=0; i<AES_BLOCK_SIZE; ++i)
+      data[i] ^= ivec[i];
+    
+    aesEncryptBlock(data, key);
+    ivec = data;
+    data_size -= AES_BLOCK_SIZE;
+    data += AES_BLOCK_SIZE;
+  }
+
+  if (data_size) {
+    for(i=0; i<data_size; ++i)	
+      data[i] ^= ivec[i];
+    
+    for(i=data_size; i<AES_BLOCK_SIZE; ++i)
+      data[i] = ivec[i];
+    
+    aesEncryptBlock(data, key);
+  }
+}
+
+/*
+** aesDecryptCBC
+**
+** Description:
+**   CBC Decryption of any data size.
+**
+** Arguments:
+**   uint8_t * data				data to decrypt
+**   uint32_t data_zise			length of data to decrypt
+**   const uint8_t *key			decryption key
+**   const uint8_t *iv			IV for first block
+*/
+void aesDecryptCBC(uint8_t *data, uint32_t data_size, const uint8_t *key, const uint8_t *iv) {
+  uint8_t ivec[AES_BLOCK_SIZE];
+  uint8_t iv_next[AES_BLOCK_SIZE];
+  uint32_t i;
+
+  memcpy(ivec, iv, AES_BLOCK_SIZE);
+  while (data_size >= AES_BLOCK_SIZE) {
+    memcpy(iv_next, data, AES_BLOCK_SIZE);
+    aesDecryptBlock(data, key);
+    
+    for(i=0; i<AES_BLOCK_SIZE; ++i)
+      data[i] ^= ivec[i];
+    
+    memcpy(ivec, iv_next, AES_BLOCK_SIZE);
+    data_size -= AES_BLOCK_SIZE;
+    data += AES_BLOCK_SIZE;
+  }
+
+  if (data_size) {
+    memcpy(iv_next, data, AES_BLOCK_SIZE);
+    aesDecryptBlock(data,key);
+    
+    for(i=0; i<data_size; ++i)
+      data[i] ^= ivec[i];
+    
+    for(i=data_size; i<AES_BLOCK_SIZE; ++i)
+      data[i] = iv_next[i];
+  }
+}
+
+/*
+** aesEncryptBlock
+**
+** Description:
+**   Encrypts a single 128bit block with AES.
+**
+** Arguments:
+**   unsigned char *block      block buffer that contains the data to be
+**                             encrypted (ie. plain in, cipher out);
+**   const unsigned char *key  128-bit key to use for encryption
+*/
+void aesEncryptBlock(uint8_t *block, const uint8_t *key)
+{
+  uint8_t i, j, k, tmp, round_key[0x10];
+
+  memcpy(round_key, key, sizeof(round_key));
+
+  for (i = 0; i < 16; i++)
+    block[i] ^= key[i];
+
+  for (i = 0; i < AES_ROUNDS; i++)
+    {
+      // byte_sub_shift_row(block);
+      block[0] = sbox[block[0]];
+      block[4] = sbox[block[4]];
+      block[8] = sbox[block[8]];
+      block[12] = sbox[block[12]];
+
+      tmp = block[1];
+      block[1] = sbox[block[5]];
+      block[5] = sbox[block[9]];
+      block[9] = sbox[block[13]];
+      block[13] = sbox[tmp];
+
+      tmp = block[2];
+      block[2] = sbox[block[10]];
+      block[10] = sbox[tmp];
+      tmp = block[6];
+      block[6] = sbox[block[14]];
+      block[14] = sbox[tmp];
+
+      tmp = block[15];
+      block[15] = sbox[block[11]];
+      block[11] = sbox[block[7]];
+      block[7] = sbox[block[3]];
+      block[3] = sbox[tmp];
+
+      if (i != (AES_ROUNDS - 1))
+	{
+	  // mix_column(block);
+	  for (k = 0; k < 16; k += 4)
+	    {
+	      j = block[k] ^ block[k + 1];				
+	      tmp = j ^ block[k + 2] ^ block[k + 3];
+    
+	      j = xtime(j);
+
+	      block[k] ^= (j ^ tmp);
+
+	      j = block[k + 1] ^ block[k + 2];
+	      j = xtime(j);
+
+	      block[k + 1] ^= (j ^ tmp);
+
+	      j = block[k + 2] ^ block[k + 3];
+	      j = xtime(j);
+
+	      block[k + 2] ^= (j ^ tmp);    
+	      block[k + 3] = block[k] ^ block[k + 1] ^ block[k + 2] ^ tmp;
+	    }
+	}
+
+      round_key[0] ^= rcon[i];
+		
+      round_key[0] ^= sbox[round_key[13]];
+      round_key[1] ^= sbox[round_key[14]];
+      round_key[2] ^= sbox[round_key[15]];
+      round_key[3] ^= sbox[round_key[12]];
+
+      for (k = 4; k < 16; k++)
+	round_key[k] ^= round_key[k - 4];
+
+      // add_round_key(block, round_key);
+      for (j = 0; j < 16; j++)
+	block[j] ^= round_key[j];
+    }
+}
+
+/*
+** aesDecryptBlock
+**
+** Description:
+**   Decrypts a single 128bit block with AES.
+**
+** Arguments:
+**   unsigned char *block	  block buffer that contains the data to be
+**                            decrypted (ie. cipher in, plain out);
+**   const unsigned char *key  128-bit key to use for decryption
+*/
+void aesDecryptBlock(uint8_t *block, const uint8_t *key)
+{
+  uint8_t i, j, round_key[0x10];
+  uint8_t a02x, a13x;
+  uint8_t a02xx, a13xx;
+  uint8_t k1, k2;
+
+  memcpy(round_key, key, sizeof(round_key));
+  for (i = 0; i < AES_ROUNDS; i++)
+    {
+      round_key[0] ^= rcon[i];
+
+      round_key[0] ^= sbox[round_key[13]];
+      round_key[1] ^= sbox[round_key[14]];
+      round_key[2] ^= sbox[round_key[15]];
+      round_key[3] ^= sbox[round_key[12]];
+
+      for (j = 4; j < 16; j++)
+	round_key[j] ^= round_key[j - 4];	
+    }
+
+  for (i = 0; i < 0x10; i++)
+    block[i] ^= round_key[i];
+
+  for (i = 1; i <= AES_ROUNDS; i++)
+    {
+      // inv_byte_sub_shift_row();
+      block[0] = inv_sbox[block[0]];
+      block[4] = inv_sbox[block[4]];
+      block[8] = inv_sbox[block[8]];
+      block[12] = inv_sbox[block[12]];
+
+      j = block[13];
+      block[13] = inv_sbox[block[9]];
+      block[9] = inv_sbox[block[5]];
+      block[5] = inv_sbox[block[1]];
+      block[1] = inv_sbox[j];
+
+      j = block[2];
+      block[2] = inv_sbox[block[10]];
+      block[10] = inv_sbox[j];
+      j = block[6];
+      block[6] = inv_sbox[block[14]];
+      block[14] = inv_sbox[j];
+
+      j = block[3];
+      block[3] = inv_sbox[block[7]];
+      block[7] = inv_sbox[block[11]];
+      block[11] = inv_sbox[block[15]];
+      block[15] = inv_sbox[j];
+
+      // get_inv_round_key(i);
+      for (j = 15; j > 3; j--)
+	round_key[j] ^= round_key[j - 4];
+
+      round_key[0] ^= (rcon[AES_ROUNDS - i] ^ sbox[round_key[13]]);
+
+      round_key[1] ^= sbox[round_key[14]];
+      round_key[2] ^= sbox[round_key[15]];
+      round_key[3] ^= sbox[round_key[12]];
+
+      for (j = 0; j < 16; j++)
+	block[j] ^= round_key[j];
+
+      if (i != AES_ROUNDS)
+	{	
+	  // inv_mix_column();
+	  for (j = 0; j < 16; j += 4)
+	    {
+	      k1 = block[j] ^ block[j + 2];
+	      a02x = xtime(k1);
+	      k2 = block[j + 1] ^ block[j + 3];
+	      a13x = xtime(k2);
+				
+	      k1 ^= (k2 ^ xtime(block[j + 1] ^ block[j + 2]));
+	      k2 = k1;
+
+	      a02xx = xtime(a02x);
+	      a13xx = xtime(a13x);
+
+	      k1 ^= (xtime(a02xx ^ a13xx) ^ a02xx);
+	      k2 ^= (xtime(a02xx ^ a13xx) ^ a13xx);
+
+	      block[j] ^= (k1 ^ a02x);
+	      block[j + 1] ^= k2;
+	      block[j + 2] ^= (k1 ^ a13x);
+	      block[j + 3] ^= (k2 ^ a02x ^ a13x);
+	    }
+	}
+    }
+}
+
+/*************************************************************************
+ **  function getCRC														**
+ **  Calculate ISO13239 checksum of buffer								**
+ **                                                                      **
+ **	unsigned short getCRC(const unsigned char *buf, int bcnt)			**
+ **                                                                      **
+ **  Where:                                                              **
+ **	"buf" is pointer to buffer											**
+ **	"bcnt" is size of the buffer										**
+ **																		**
+ **	Returns: ISO13239 checksum											**
+ **                                                                      **
+ *************************************************************************/
+
+/*
+** getCRC
+**
+** Description:
+**   Calculates the ISO 13239 16 bit checksum of data.
+**
+** Arguments:
+**   const uint8_t *data		pointer to data buffer
+**   uint32_t size				size of the data bufffer to calculate over
+**
+** Returns:
+**   16 bit ISO 13239 checksum.
+*/
+uint16_t getCRC(const uint8_t *data, uint32_t size)
+{
+  uint16_t			crc = 0xffff;
+  uint8_t				i;
+
+  while (size--)
+    {
+      crc ^= *data++;
+
+      for (i = 0; i < 8; i++) 
+	crc = (crc & 1) ? ((crc >> 1) ^ 0x8408) : (crc >> 1);
+    }
+
+  return crc;
+}
+
+/*
+** parseOTP
+**
+** Description:
+**   Decodeds a Yubikey One Time Pad (OTP) in modhex format. It expects at
+** least 32 modhex characters (ie 128 bits) of information which is the token
+** in it's encrypted format. Additional prepended data is assumed to be the
+** public UID portion of the token.
+**
+** Arguments:
+**   yk_ticket *tkt				destination of parsed ticket information
+**   uint8_t *public_uid		destination of public UID if present
+**   uint8_t *public_uid_size   byte size of the public UID
+**   const uint8_t *otp			source OTP in modhex format (>=32 chars)
+**   const uint8_t *otp			AES decryptino key in hex format (16 bytes)
+**
+** Returns:
+**   Return 0 on success, non zero otherwise.
+*/
+int parseOTP(yk_ticket *tkt, uint8_t *public_uid, uint8_t *public_uid_size, const uint8_t *otp, const uint8_t *key)
+{
+  uint8_t				otp_bin[PUBLIC_UID_BYTE_SIZE + sizeof(yk_ticket)];
+  uint32_t			otp_bin_size;
+  uint16_t			crc;
+
+  /* convert from either modhex or hex */
+  if ( !checkHexString(otp) )
+    {
+      if ((otp_bin_size = hexDecode(otp_bin, otp, sizeof(otp_bin))) < sizeof(yk_ticket))
+	return 1;
+    }
+  else if ( !checkModHexString(otp) )
+    {
+      if ((otp_bin_size = modHexDecode(otp_bin, otp, sizeof(otp_bin))) < sizeof(yk_ticket))
+	return 1;
+    }
+  else
+    {
+      return 1;
+    }
+
+  /* must be at least the size of a yk_ticket structure */
+  if (otp_bin_size < sizeof(yk_ticket))
+    return 1;
+
+  /* ticket is located in the last 16 bytes */
+  memcpy(tkt, otp_bin + otp_bin_size - sizeof(yk_ticket), sizeof(yk_ticket));
+
+  /* grab the public uid (if present) */
+  *public_uid_size = (uint8_t) (otp_bin_size - sizeof(yk_ticket));
+
+  /* limit public uid to maximum allowable by a Yubikey */
+  if ( *public_uid_size > PUBLIC_UID_BYTE_SIZE )
+    *public_uid_size = PUBLIC_UID_BYTE_SIZE;
+
+  /* store the public uid if exists */
+  if (*public_uid_size > 0)
+    memcpy(public_uid, otp_bin, *public_uid_size);
+  else
+    *public_uid_size = 0;
+
+  /* decrypt the single block (ie. 128bit) ticket */
+  if (key == NULL)
+    return 1;
+
+  aesDecryptBlock((uint8_t *) tkt, key);
+
+  /* calculate CRC of the ticket */
+  crc = getCRC((uint8_t *) tkt, sizeof(yk_ticket));
+
+  /* ticket is generated in little endian */
+  ENDIAN_SWAP_16(crc);
+
+  if (crc != CRC_OK_RESIDUE)
+    return 1;
+
+  // Shape up little-endian fields (if applicable)
+  ENDIAN_SWAP_16(tkt->random);
+  ENDIAN_SWAP_16(tkt->timestamp_lo);
+  ENDIAN_SWAP_16(tkt->use_counter);
+
+  return 0;
+}
+
+/*
+** sha256_xform
+**
+** Description:
+**   Perform a 256bit transform on the input block by placing 8 bit words into
+** 32 bit words.
+**
+** Arguments:
+**   uint32_t *state			destination for 32 bit words after transform
+**   const uint8_t *input		source of 8 bit words
+*/
+void sha256_xform(uint32_t *state, const uint8_t *input)
+{
+  uint32_t			a, b, c, d, e, f, g, h, t1, t2;
+  uint32_t			W[64];
+
+  int i;
+	
+  /* load the input */
+  for (i=0; i<16; i++)
+    LOAD_OP(i);
+
+  /* now blend */
+  for (i=16; i<64; i++)
+    BLEND_OP(i);
+
+  /* load the state into our registers */
+  a=state[0];  b=state[1];  c=state[2];  d=state[3];
+  e=state[4];  f=state[5];  g=state[6];  h=state[7];
+
+  /* now blend */
+  for (i=0; i<64; i++)
+    {
+      t1 = h + e1(e) + Ch(e,f,g) + sha256_K[i] + W[i];
+      t2 = e0(a) + Maj(a,b,c);
+      h = g;   g = f;   f = e;   e = d + t1;
+      d = c;   c = b;   b = a;   a = t1 + t2;
+    }
+
+  state[0]+=a;   state[1]+=b;   state[2]+=c;   state[3]+=d;
+  state[4]+=e;   state[5]+=f;   state[6]+=g;   state[7]+=h;
+}
+
+/*
+** sha256_init
+**
+** Description:
+**   Initialises the context prior to generating a SHA256 hash.
+**
+** Arguments:
+**   sha256_context *C			context structure used during hash generation
+*/
+void sha256_init(sha256_context *C)
+{
+  C->state[0] = H0;
+  C->state[1] = H1;
+  C->state[2] = H2;
+  C->state[3] = H3;
+  C->state[4] = H4;
+  C->state[5] = H5;
+  C->state[6] = H6;
+  C->state[7] = H7;
+  C->count[0] = C->count[1] = 0;
+
+  memset(C->buf, 0, 128);
+}
+
+/*
+** sha256_update
+**
+** Description:
+**   Updates the context with the stream/block data being passed.
+**
+** Arguments:
+**   sha256_context *C			context structure used during hash generation
+**   const uint8_t *data		input block/stream data to hash
+**   uint32_t size				size of data to process
+*/
+void sha256_update(sha256_context *C, const uint8_t *data, uint32_t size)
+{
+  uint32_t			i, index, chunk_size;
+
+  /* calculate number of bytes mod 128 */
+  index = (uint32_t)((C->count[0] >> 3) & 0x3f);
+
+  /* update number of bits */
+  if ((C->count[0] += (size << 3)) < (size << 3)) {
+    C->count[1]++;
+    C->count[1] += (size >> 29);
+  }
+
+  chunk_size = 64 - index;
+
+  /* transform in chunks as required */
+  if (size >= chunk_size)
+    {
+      memcpy((uint8_t *)&C->buf[index], data, chunk_size);
+      sha256_xform(C->state, C->buf);
+
+      for (i=chunk_size; i+63<size; i+=64)
+	sha256_xform(C->state, &data[i]);
+
+      index = 0;
+    }
+  else
+    {
+      i = 0;
+    }
+
+  /* buffer remaining input */
+  memcpy((uint8_t *)&C->buf[index], (uint8_t *)&data[i], size-i);
+}
+
+/*
+** sha256_final
+**
+** Description:
+**   Finalies the context and produces the final SHA256 digest.
+**
+** Arguments:
+**   uint8_t *digest			pointer to final hash digest
+**   sha256_context *C			context structure used during hash generation
+*/
+void sha256_final(uint8_t *digest, sha256_context *C)
+{
+  uint8_t				bits[8];
+  uint32_t			index, pad_size, t;
+  uint32_t			i, j;
+
+  /* save number of bits */
+  t = C->count[0];
+  bits[7] = t; t>>=8;
+  bits[6] = t; t>>=8;
+  bits[5] = t; t>>=8;
+  bits[4] = t; t>>=8;
+  t = C->count[1];
+  bits[3] = t; t>>=8;
+  bits[2] = t; t>>=8;
+  bits[1] = t; t>>=8;
+  bits[0] = t; t>>=8;
+
+  /* pad out to 56 mod 64. */
+  index = (C->count[0] >> 3) & 0x3f;
+  pad_size = (index < 56) ? (56 - index) : ((64+56) - index);
+  sha256_update(C, (uint8_t *)sha256_padding, pad_size);
+
+  /* append length (before padding) */
+  sha256_update(C, bits, 8);
+
+  /* store state in digest */
+  for (i=j=0; i<8; i++, j+=4)
+    {
+      t = C->state[i];
+      digest[j+3] = t; t>>=8;
+      digest[j+2] = t; t>>=8;
+      digest[j+1] = t; t>>=8;
+      digest[j  ] = t;
+    }
+
+  /* zeroize sensitive information. */
+  memset(C, 0, sizeof(sha256_context));
+}
+
+/*
+** getSHA256
+**
+** Description:
+**   Produces a SHA256 hash based on teh input data. Wraps the pervious *init,
+** *update and *final functions.
+**
+** Arguments:
+**   const uint8_t *data		input block/stream data to hash
+**   uint32_t size				size of data to process
+**   uint8_t *digest			pointer to final hash digest
+*/
+void getSHA256(const uint8_t *data, uint32_t size, uint8_t *digest)
+{
+  sha256_context		context;
+
+  if (size <= 0)
+    return;
+
+  sha256_init(&context);
+  sha256_update(&context, data, size);
+  sha256_final(digest, &context);
+}
+
+void printTicket(yk_ticket *tkt)
+{
+  int i;
+	
+  printf("ticket {\n");
+  printf("  private uid      = ");
+  for (i = 0; i<PRIVATE_UID_BYTE_SIZE; i++)
+    printf("%02x ", tkt->private_uid[i]);
+  printf("[%u]\n", PRIVATE_UID_BYTE_SIZE);
+  printf("  counter          = 0x%04x (%u)\n", tkt->use_counter, tkt->use_counter); 
+  printf("  timestamp (low)  = 0x%04x (%u)\n", tkt->timestamp_lo, tkt->timestamp_lo);
+  printf("  timestamp (high) = 0x%02x (%u)\n", tkt->timestamp_hi, tkt->timestamp_hi);
+  printf("  session use      = 0x%02x (%u)\n", tkt->session_counter, tkt->session_counter);
+  printf("  pseudo-random    = 0x%04x (%u)\n", tkt->random, tkt->random);
+  printf("  crc              = 0x%04x (%u)\n", tkt->crc, tkt->crc);
+  printf("}\n");
+}
+
+/* Guaranteed to be '\0' terminated even if truncation occurs.
+ */
+int safeSnprintf(char *buf, size_t buf_size, const char *format, ...)
+{
+  va_list ap;
+  int ret;
+
+  if (buf == NULL || buf_size <= 0 || format == NULL)
+    return -1;
+
+  /* zero first byte in case an error occurs with
+   * vsnprintf, so buffer is null terminated with
+   * zero length */
+  buf[0] = '\0';
+  buf[buf_size - 1] = '\0';
+
+  va_start(ap, format);
+  ret = vsnprintf(buf, buf_size, format, ap);
+  va_end(ap);
+
+  if (ret < 0)
+    return -1;
+
+  if (buf[buf_size - 1] != '\0' || (size_t)ret >= buf_size)
+    {
+      /* result was truncated */
+      buf[buf_size - 1] = '\0';
+      return -2;
+    }
+
+  return 0;
+}
+
+/* Appends to a given string
+** Guaranteed to be '\0' terminated even if truncation occurs.
+*/
+int safeSnprintfAppend(char *buf, size_t buf_size, const char *format, ...)
+{
+  int str_len;
+  int ret;
+  va_list ap;
+
+  if (buf == NULL || buf_size <= 0 || format == NULL)
+    return -1;
+
+  str_len = safeStrnlen(buf, buf_size);
+
+  /* since we've already checked buf and buf_size an error
+   * indicates no null termination, so just start at
+   * beginning of buffer */
+  if (str_len == -1)
+    {
+      buf[0] = '\0';
+      str_len = 0;
+    }
+
+  buf[buf_size - 1] = '\0';
+  va_start(ap, format);
+  ret = vsnprintf(buf + str_len, buf_size - (size_t)str_len, format, ap);
+  va_end(ap);
+
+  if (ret < 0)
+    return -1;
+
+  if (buf[buf_size - 1] != '\0' || (size_t)ret >= buf_size)
+    {
+      /* truncation occured */
+      buf[buf_size - 1] = '\0';
+      return -2;
+    }
+
+  return 0;
+}
+
+int safeStrnlen(const char *buf, int buf_size)
+{
+  int i = 0;
+	
+  if (buf == NULL || buf_size <= 0)
+    return -1;
+
+  for (i = 0; i < buf_size; i++)
+    {
+      if (buf[i] == '\0')
+	break;
+    }
+					  
+  if (i == buf_size)
+    return -1;
+	 
+  return i;
+}
+
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
