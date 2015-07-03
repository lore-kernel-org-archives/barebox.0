Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAulI-0007Gm-S2
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 06:47:49 +0000
Received: by lbcpe5 with SMTP id pe5so44460403lbc.2
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2015 23:47:27 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 3 Jul 2015 08:47:26 +0200
Message-ID: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] digest: digest doesn't return an error if the signature
 length is incorrect
To: barebox@lists.infradead.org

Hi,

I noticed that digest return 0 even if the signature length is
detected as incorrect. This patch also fix the documentation that
seems obsolete (I considered that the patch was simply enough to make
two corrections, but tell me if I should propose two patch).


Subject: [PATCH] digest: digest doesn't return an error if the
signature length is incorrect

fix: digest return no error even if the digest length is wrong
fix: documentation error (-v -> -s / -V -> -S)

Signed-off-by: Philippe Leduc <ledphilippe@gmail.com>
---
 commands/digest.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 340c07a..5304f32 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -167,6 +167,7 @@ static int do_digest(int argc, char *argv[])
                } else if (siglen != digestlen) {
                        eprintf("%s wrong size %zu, expected %zu\n",
                                sigfile, siglen, digestlen);
+                       ret = 1;
                        goto err;
                }
        }
@@ -186,8 +187,8 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "hash or signature algorithm to use")
 BAREBOX_CMD_HELP_OPT ("-k <key>\t",   "use supplied <key> (ASCII or
hex) for MAC")
 BAREBOX_CMD_HELP_OPT ("-K <file>\t",  "use key from <file> (binary) for MAC")
-BAREBOX_CMD_HELP_OPT ("-v <hex>\t",   "verify data against supplied
<hex> (hash, MAC or signature)")
-BAREBOX_CMD_HELP_OPT ("-V <file>\t",  "verify data against <file>
(hash, MAC or signature)")
+BAREBOX_CMD_HELP_OPT ("-s <hex>\t",   "verify data against supplied
<hex> (hash, MAC or signature)")
+BAREBOX_CMD_HELP_OPT ("-S <file>\t",  "verify data against <file>
(hash, MAC or signature)")
 BAREBOX_CMD_HELP_END

 BAREBOX_CMD_START(digest)
--
2.1.4


Philippe LEDUC
ledphilippe@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
