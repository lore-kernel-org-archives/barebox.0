Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SPrJD-00064P-Ho
 for barebox@lists.infradead.org; Thu, 03 May 2012 08:22:44 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 78E01104EA38
 for <barebox@lists.infradead.org>; Thu,  3 May 2012 10:24:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 May 2012 10:01:08 +0200
Message-Id: <1336032068-19869-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] complete: fix duplicate env eval list
To: barebox@lists.infradead.org

this can be reproductable by this sequence

barebox:/ <TAB>
.                  ?                  [                  addpart
bootm              cat                cd                 clear
cp                 cpuinfo            crc32              delpart
devinfo            dhcp               echo               edit
erase              ethact             exit               export
false              getopt             go                 help
host               loadb              loadenv            loady
login              ls                 md                 md5sum
memcmp             memcpy             meminfo            memset
menu               mkdir              mount              mtest
mw                 nfs                passwd             ping
printenv           protect            pwd                readline
reset              rm                 rmdir              saveenv
sedit              sh                 sha1sum            sha256sum
sleep              source             test               tftp
time               timeout            true               umount
uncompress         unprotect          version            net.nameserver=
net.domainname=    cs0.baudrate=      cs0.active=        cs1.active=
cs1.ip=            cs1.port=
barebox:/ $<TAB>
$net.nameserver     $net.domainname     $cs0.baudrate
$cs0.active         $cs1.active         $cs1.ip
$cs1.port           $net.nameserver     $net.domainname
$cs0.baudrate       $cs0.active         $cs1.active
$cs1.ip             $cs1.port
barebox:/ $

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 0b03d7c..0780888 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -272,7 +272,7 @@ static char* cmd_complete_lookup(struct string_list *sl, char *instr)
 {
 	struct command *cmdtp;
 	int len;
-	int ret = 1;
+	int ret = COMPLETE_END;
 	char *res = NULL;
 
 	for_each_command(cmdtp) {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
