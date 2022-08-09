Delivery-date: Tue, 09 Aug 2022 15:22:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBy-00HPiP-5L
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 15:22:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBw-00020H-AO
	for lore@pengutronix.de; Tue, 09 Aug 2022 15:22:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7jf+NsTMviCY3iHOHQvOfpNQBqDsQo3qhibGcyz1JM0=; b=WD4lxiat0VMmjCkTyQ1NQvfOkT
	yjcij+58Etrgyf3ZDAftWPUMFfQfL655R0EEzdViTNqwVDzRz/QsHy4sta4CyRxplRr1MlIKDk1yQ
	0txkmWN9oSF5zhnEvyOzF90+b7ANZo0OHI/r0wSMPuYrR1+pRIFMLNakGs7bfhUWDfKLqcvUrLfCm
	xFD6W6pxcRxdAJ/qK3R6UR1O6nepLT/j24I5mZmpnw1mNAieMPmuYjKkHjba7yMvRv/1Ct2mFTiAC
	GCG68lQdGGJS2owi920JLgP88+6Ioi/JaWlPQYrH8m4N21Dy6ZznKmsamkTnjiyLtGzVvxdsj8rZ1
	GvQcg2zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPAS-0044af-76; Tue, 09 Aug 2022 13:21:08 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPAC-0044VD-36
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 13:20:54 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id B38D83235B2
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1660051250;
	bh=UZnqF7YUkX88YEmaCeatOPO5HMkrJK0T8lrRY30KSY0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=VXcF4t4asF0jE5v9XBss8Fv6cBkYPXTYMRXvj9kMd2fsAlAdqoO/3G5+YySL08yUj
	 U+tinnD8EOJIhZbwN4sGmvmUdF4QOv7o1ZOqaoG3aAiGQU36jWl5QgI5zBhCPznaTS
	 rt5078TLVNiD+2C1mDZNqll4Qrp0gtHikMAhE5kw=
Received: from fx405 (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id 55B03323755
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:31 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <f43f.62f25f1d.d5723.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx405.security-mail.net (Postfix) with ESMTPS id D93BE323805
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id B237327E053A;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 9BA5327E054D;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9BA5327E054D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1660051229;
	bh=7jf+NsTMviCY3iHOHQvOfpNQBqDsQo3qhibGcyz1JM0=;
	h=From:To:Date:Message-Id;
	b=OE7ONPQoXtbMfvlr6ceG4XQPknJTxxP18Gdwir/UXbmljnDZkS6pe0W4c1kvTTpG9
	 Xs+So7CIssmCh5+4FxAk3NdMUcQh0kpw3DcFCLRmvmHuvrkN5X/rhAe5GXNGvp2bMu
	 KclwR0lw3OzusqD8eCOioEFP4oYoeIJs70c2kG4c=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id xk90mCU4wzsn; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 7EB4F27E0548;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  9 Aug 2022 15:20:20 +0200
Message-Id: <20220809132021.7110-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220809132021.7110-1-jmaselbas@kalray.eu>
References: <20220809132021.7110-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_062052_476491_122911DB 
X-CRM114-Status: GOOD (  22.26  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 4/5] Add irc command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The irc command implement an IRC client, right here in barebox.
This could be used to ask help in case a user cannot boot linux...
More realistically this is an example of using the TCP support.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 commands/Kconfig  |   9 +
 commands/Makefile |   1 +
 commands/irc.c    | 572 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 582 insertions(+)
 create mode 100644 commands/irc.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 86e4714849..5faf8eccc1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1244,6 +1244,15 @@ config CMD_PING
 
 	  Usage: ping DESTINATION
 
+config CMD_IRC
+	tristate
+	prompt "irc"
+	default n
+	help
+	  Simple IRC client
+
+	  Usage: irc [-n] DESTINATION [PORT]
+
 config CMD_TFTP
 	depends on FS_TFTP
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index b3b7bafe6b..ecdcfe9619 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -67,6 +67,7 @@ obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
+obj-$(CONFIG_CMD_IRC)		+= irc.o
 obj-$(CONFIG_CMD_SPI)		+= spi.o
 obj-$(CONFIG_CMD_MIPI_DBI)	+= mipi_dbi.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
diff --git a/commands/irc.c b/commands/irc.c
new file mode 100644
index 0000000000..b2b154b1dc
--- /dev/null
+++ b/commands/irc.c
@@ -0,0 +1,572 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2022 Jules Maselbas <jmaselbas@kalray.eu>
+
+/* irc.c - IRC client */
+
+#include <common.h>
+#include <command.h>
+#include <net.h>
+#include <errno.h>
+#include <getopt.h>
+#include <linux/err.h>
+#include <linux/string.h>
+#include <linux/ctype.h>
+#include <readkey.h>
+#include <sched.h>
+#include <crc.h>
+#include <globalvar.h>
+
+static IPaddr_t	net_ip;
+
+static struct net_connection *con;
+
+static char chan[32];
+static char nick[32];
+static char input_line[128];
+
+static int redraw;
+LIST_HEAD(irc_log);
+static int irc_log_nb_msgs;
+
+struct msg_entry {
+	struct list_head list;
+	unsigned char type;
+	unsigned char flag;
+	char *msg;
+	char *nick;
+};
+
+enum type {
+	NONE = 0,
+	INFO = 1,
+	PART,
+	QUIT,
+	JOIN,
+	PRIV,
+	EMOT,
+};
+
+enum flag {
+	SELF = 1,
+	HIGH = 2,
+};
+
+const char *nickcolor[] = {
+	"\033[0m",  /* normal */
+	"\033[31m", /* red */
+	"\033[32m", /* green */
+	"\033[33m", /* yellow */
+	"\033[34m", /* blue */
+	"\033[35m", /* purple */
+	"\033[36m", /* cyan */
+	"\033[1;31m",
+	"\033[1;32m",
+	"\033[1;33m",
+	"\033[1;34m",
+	"\033[1;35m",
+	"\033[1;36m",
+};
+
+const char *color[] = {
+	[NONE] = "",
+	[INFO] = "\033[1;34m", /* blue */
+	[PART] = "\033[1;31m", /* red */
+	[QUIT] = "\033[1;31m", /* red */
+	[JOIN] = "\033[1;32m", /* green */
+	[PRIV] = "",
+	[EMOT] = "",
+};
+
+const char *prefix[] = {
+	[NONE] = "",
+	[INFO] = "-!-",
+	[PART] = "<--",
+	[QUIT] = "<--",
+	[JOIN] = "-->",
+	[PRIV] = "",
+	[EMOT] = "",
+};
+
+static int irc_send(const char *msg, int len);
+static int irc_pong(const char *txt);
+static int irc_ctcp(const char *dst, const char *act, const char *msg);
+
+static void irc_print_msg(struct msg_entry *msg)
+{
+	const char *inv = "";
+	const char *col = "";
+	const char *off = "";
+	const char *pre = prefix[msg->type];
+	uint32_t crc;
+
+	if (console_allow_color()) {
+		col = color[msg->type];
+		off = "\033[0m";
+
+		if (msg->type == PRIV || msg->type == EMOT) {
+			crc = crc32(0, msg->nick, strlen(msg->nick));
+			if (msg->flag & SELF)
+				col = "\033[1m";
+			else
+				col = nickcolor[crc % ARRAY_SIZE(nickcolor)];
+		}
+
+		if (msg->flag & HIGH)
+			inv = "\033[7m";
+	}
+
+	if (msg->type == PRIV)
+		printf("<%s%s%s%s> %s\n", inv, col, msg->nick, off, msg->msg);
+	else if (msg->type == EMOT)
+		printf(" * %s%s%s%s %s\n", inv, col, msg->nick, off, msg->msg);
+	else
+		printf("%s%s%s %s\n", col, pre, off, msg->msg);
+}
+
+static void irc_add_line(enum type type, enum flag flag, char *name, char *line)
+{
+	struct msg_entry *msg;
+
+	msg = malloc(sizeof(*msg));
+	if (!msg)
+		return;
+	msg->msg = line;
+	msg->type = type;
+	msg->flag = flag;
+	msg->nick = basprintf("%s", name ? name : "");
+
+	if (!(flag & SELF)) {
+		if (strstr(line, nick) != NULL)
+			msg->flag |= HIGH;
+	}
+
+	list_add_tail(&msg->list, &irc_log);
+	irc_log_nb_msgs++;
+	printf("\r\x1b[K");
+	irc_print_msg(msg);
+	printf("\r[%s] %s\x1b[K", nick, input_line);
+}
+
+static void irc_draw(void)
+{
+	struct msg_entry *msg;
+
+	clear();
+	printf("\r\x1b[K");
+	list_for_each_entry(msg, &irc_log, list) {
+		irc_print_msg(msg);
+	}
+	printf("\r[%s] %s\x1b[K", nick, input_line);
+}
+
+static void irc_recv(char *msg)
+{
+	char *nick = NULL, *host = NULL;
+	char *cmd = NULL, *chan = NULL, *arg = NULL;
+	char *text = NULL;
+	char **argp[] = { &cmd, &chan, &arg };
+	int argc = 0;
+	char *p = NULL, *l = NULL;
+	char t = NONE;
+
+	/* :<nick>!<user>@<host> */
+	if (msg[0] == ':') {
+		nick = ++msg;
+		if (!(p = strchr(msg, ' ')))
+			return;
+		*p = '\0';
+		msg = skip_spaces(p + 1);
+		if ((p = strchr(nick, '!'))) {
+			*p = '\0';
+			host = ++p;
+		}
+	}
+
+	if ((p = strchr(msg, ':'))) {
+		*p = '\0';
+		text = ++p;
+		if ((p = strchr(text, '\r')))
+			*p = '\0';
+	}
+
+	/* <cmd> [<chan> [<arg> ]]\0 */
+	while (argc < (ARRAY_SIZE(argp) - 1) && (p = strchr(msg, ' '))) {
+		*p = '\0';
+		*argp[argc++] = msg;
+		msg = ++p;
+	}
+	if (argc == (ARRAY_SIZE(argp) - 1))
+		*argp[argc] = msg;
+
+	if (!cmd || !strcmp("PONG", cmd)) {
+		return;
+	} else if (!strcmp("PING", cmd)) {
+		irc_pong(text);
+		return;
+	} else if (!nick || !host) {
+		t = INFO;
+		l = basprintf("%s%s", arg ? arg : "", text ? text : "");
+	} else if (!strcmp("ERROR", cmd)) {
+		t = INFO;
+		l = basprintf("error %s", text ? text : "unknown");
+	} else if (!strcmp("JOIN", cmd) && (chan || text)) {
+		if (text)
+			chan = text;
+		t = JOIN;
+		l = basprintf("%s(%s) has joined %s", nick, host, chan);
+	} else if (!strcmp("PART", cmd) && chan) {
+		t = PART;
+		l = basprintf("%s(%s) has left %s", nick, host, chan);
+	} else if (!strcmp("QUIT", cmd)) {
+		t = QUIT;
+		l = basprintf("%s(%s) has quit (%s)", nick, host, text ? text : "");
+	} else if (!strcmp("NICK", cmd) && text) {
+		t = INFO;
+		l = basprintf("%s changed nick to %s", nick, text);
+	} else if (!strcmp("NOTICE", cmd)) {
+		t = INFO;
+		l = basprintf("%s: %s", nick, text ? text : "");
+	} else if (!strcmp("PRIVMSG", cmd)) {
+		if (!text)
+			text = "";
+		if (!strncmp("\001ACTION", text, strlen("\001ACTION"))) {
+			text += strlen("\001ACTION");
+			if (text[0] == ' ')
+				text++;
+			if ((p = strchr(text, '\001')))
+				*p = '\0';
+			t = EMOT;
+			l = basprintf("%s", text);
+		} else if (!strncmp("\001VERSION", text, strlen("\001VERSION"))) {
+			irc_ctcp(nick, "VERSION", version_string);
+		} else if (!strncmp("\001CLIENTINFO", text, strlen("\001CLIENTINFO"))) {
+			irc_ctcp(nick, "CLIENTINFO", "ACTION VERSION");
+		} else {
+			t = PRIV;
+			l = basprintf("%s", text);
+		}
+	} else {
+		t = INFO;
+		l = basprintf("%s", cmd);
+	}
+
+	irc_add_line(t, 0, nick, l);
+}
+
+static int rem;
+
+static void tcp_handler(char *buf, int len)
+{
+	static char msg[512];
+	char *end, *eol;
+
+	if (!len)
+		return;
+
+	end = buf + len;
+
+	/* messages ends with CR LF "\r\n" */
+	while ((eol = memchr(buf, '\n', len))) {
+		*eol = '\0';
+		if (rem) {
+			strlcpy(msg + rem, buf, sizeof(msg) - rem);
+			irc_recv(msg);
+			rem = 0;
+		} else {
+			irc_recv(buf);
+		}
+		if (eol == end)
+			break;
+		len -= (eol - buf) + 1;
+		buf += (eol - buf) + 1;
+	}
+	if (buf < end) {
+		/* keep unterminated line (rem bytes) into the msg buffer */
+		size_t n = min_t(size_t, end - buf + 1, sizeof(msg) - rem);
+		rem += strlcpy(msg + rem, buf, n);
+	}
+
+	printf("\r[%s] %s", nick, input_line);
+}
+
+static void net_handler(void *ctx, char *pkt, unsigned len)
+{
+	struct iphdr *ip = net_eth_to_iphdr(pkt);
+
+	if (net_read_ip((void *)&ip->saddr) != net_ip) {
+		printf("bad ip !\n");
+		return;
+	}
+
+	tcp_handler(net_eth_to_tcp_payload(pkt), net_eth_to_tcplen(pkt));
+}
+
+static int irc_send(const char *msg, int len)
+{
+	char *buf = net_tcp_get_payload(con);
+
+	if (len > 0) {
+		memcpy(buf, msg, len);
+		return net_tcp_send(con, len);
+	}
+
+	return 0; /* nothing to do */
+}
+
+static int irc_priv_msg(char *dst, char *str)
+{
+	char *buf = net_tcp_get_payload(con);
+	int len;
+
+	len = snprintf(buf, 256, "PRIVMSG %s :%s\r\n", dst, str);
+	if (len <= 0)
+		return -1;
+	irc_add_line(PRIV, SELF, nick, basprintf("%s", str));
+	return net_tcp_send(con, len);
+}
+
+static int irc_pong(const char *txt)
+{
+	char *buf = net_tcp_get_payload(con);
+	int len;
+
+	len = snprintf(buf, 256, "PONG %s\r\n", txt);
+	if (len <= 0)
+		return -1;
+	return net_tcp_send(con, len);
+}
+
+static int irc_ctcp(const char *dst, const char *act, const char *msg)
+{
+	char *buf = net_tcp_get_payload(con);
+	int len;
+
+	len = snprintf(buf, 256, "NOTICE %s :\001%s %s \001\r\n", dst, act, msg);
+	if (len <= 0)
+		return -1;
+	return net_tcp_send(con, len);
+}
+
+static char msg[512];
+
+static int irc_input(char *buf)
+{
+	int len;
+	char *p;
+	char *k;
+
+	if (buf[0] == '\0')
+		return 0;
+	if (buf[0] != '/')
+		return irc_priv_msg(chan, buf);
+
+	len = 0;
+	p = strchr(buf, ' ');
+	p = (p != NULL) ? p + 1 : NULL;
+	switch (buf[1]) {
+	case 'j': /* join */
+		if (!p)
+			break;
+		len = snprintf(msg, sizeof(msg), "JOIN %s\r\n", p);
+		k = strchr(p, ' ');
+		if (k)
+			*k = '\0';
+		strlcpy(chan, p, sizeof(chan));
+		break;
+	case 'p': /* part */
+	case 'l': /* leave */
+		if (!p)
+			p = "leaving";
+		len = snprintf(msg, sizeof(msg), "PART %s :%s\r\n", chan, p);;
+		break;
+	case 'n': /* nick */
+		if (!p)
+			break;
+		len = snprintf(msg, sizeof(msg), "NICK %s\r\n", p);
+		strlcpy(nick, p, sizeof(nick));
+		break;
+	case 'm': /* me */
+		if (!p)
+			break;
+		len = snprintf(msg, sizeof(msg),
+			       "PRIVMSG %s :\001ACTION %s\001\r\n", chan, p);
+		irc_add_line(EMOT, SELF, nick, basprintf("%s", p));
+		break;
+	case 'w': /* wisper */
+		if (!p)
+			break;
+		k = strchr(p, ' ');
+		if (!k)
+			break;
+		*k = '\0';
+		return irc_priv_msg(p, k + 1);
+	case 'q': /* quit */
+		if (!p)
+			p = "quiting";
+		len = snprintf(msg, sizeof(msg), "QUIT :%s\r\n", p);
+		break;
+	default:
+		len = snprintf(msg, sizeof(msg), "%s\r\n", &buf[1]);
+		break;
+	}
+
+	return irc_send(msg, len);
+}
+
+static int irc_login(char *host, char *real)
+{
+	int len;
+
+	len = snprintf(msg, sizeof(msg),
+		       "NICK %s\r\n"
+		       "USER %s localhost %s :%s\r\n",  nick, nick, host, real);
+
+	return irc_send(msg, len);
+}
+
+static int irc_readline(char *buf, int len)
+{
+	int n, c;
+
+	memset(buf, 0, len);
+	printf("\r[%s] \x1b[K", nick);
+
+	for (n = 0; n < len; ) {
+		while (!tstc()) {
+			if (redraw) {
+				redraw = 0;
+				irc_draw();
+			}
+			net_poll();
+			resched();
+		}
+		c = getchar();
+		if (c < 0)
+			return (-1);
+		switch (c) {
+		case '\b':
+		case BB_KEY_DEL7:
+		case BB_KEY_DEL:
+			if (n > 0) {
+				buf[--n] = '\0';
+				printf("\b \b");
+			}
+			break;
+		default:
+			if (isascii(c) && isprint(c)) {
+				buf[n++] = c;
+				printf("%c", c);
+			}
+			break;
+		case BB_KEY_CLEAR_SCREEN:
+			redraw = 1;
+			break;
+		case '\r':
+		case '\n':
+			buf[n] = '\0';
+			return n;
+		case CTL_CH('c'):
+			buf[0] = '\0';
+			if (n == 0) {
+				printf("QUIT");
+				return -1;
+			}
+			return 0;
+		}
+	}
+	return n;
+}
+
+static int do_irc(int argc, char *argv[])
+{
+	int ret;
+	char *host, *p;
+	char *command = NULL;
+	uint16_t port = 6667;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "c:n:")) > 0) {
+		switch (opt) {
+		case 'c':
+			command = optarg;
+			break;
+		case 'n':
+			strlcpy(nick, optarg, sizeof(nick));
+			break;
+		}
+	}
+	argv += optind;
+	argc -= optind;
+	if (argc < 1)
+		return COMMAND_ERROR_USAGE;
+	host = argv[0];
+	if ((p = strchr(host, '/'))) {
+		*p = '\0';
+		port = simple_strtoul(p + 1, NULL, 10);
+	}
+	if (argc > 1)
+		port = simple_strtoul(argv[1], NULL, 10);
+
+	ret = resolv(host, &net_ip);
+	if (ret) {
+		printf("Cannot resolve \"%s\": %s\n", host, strerror(-ret));
+		return ret;
+	}
+
+	con = net_tcp_new(net_ip, port, net_handler, NULL);
+	if (IS_ERR(con)) {
+		printf("net tcp new fail\n");
+		ret = PTR_ERR(con);
+		goto out;
+	}
+
+	ret = net_tcp_open(con);
+	if (ret) {
+		printf("net_tcp_open: %d\n", ret);
+		goto out;
+	}
+
+	redraw = 1;
+	rem = 0;
+	chan[0] = '\0';
+	if (nick[0] == '\0')
+		strlcpy(nick, "barebox", sizeof(nick));
+	irc_login(host, "barebox");
+
+	if (command)
+		irc_input(command);
+
+	while (con->state == TCP_ESTABLISHED) {
+		int len;
+		len = irc_readline(input_line, sizeof(input_line) - 1);
+		if (len < 0)
+			break;
+		if (irc_input(input_line) < 0)
+			break;
+		if (ctrlc()) {
+			ret = -EINTR;
+			break;
+		}
+	}
+	net_tcp_close(con);
+	net_poll();
+
+	ret = con->ret;
+out:
+	if (!IS_ERR(con))
+		net_unregister(con);
+
+	return ret;
+}
+BAREBOX_CMD_HELP_START(irc)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n NICK\t", "nick to use")
+BAREBOX_CMD_HELP_OPT ("-c COMMAND\t", "command to run after login")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(irc)
+	.cmd		= do_irc,
+	BAREBOX_CMD_DESC("IRC client")
+	BAREBOX_CMD_OPTS("[-nc] DESTINATION[[/]PORT]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+BAREBOX_CMD_END
-- 
2.17.1



