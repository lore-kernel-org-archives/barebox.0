Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.97.mail-out.ovh.net ([178.33.44.185]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUqg4-0008J7-DF
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 01:38:25 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 011C84A73E0
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 03:38:58 +0200 (CEST)
Date: Fri, 10 Jun 2011 03:25:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610012502.GM17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
	<BANLkTikwVwFUzZFRUJCS72SxmNSjw-KRtw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UHN/qo2QbUvPLonB"
Content-Disposition: inline
In-Reply-To: <BANLkTikwVwFUzZFRUJCS72SxmNSjw-KRtw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: pull request complete support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org


--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 00:46 Fri 10 Jun     , Hubert Feurstein wrote:
> Hi Jean-Christophe,
> 
> I've tested it in the sandbox and get an access violation when I type
> "dev<TAB>". Here is the backtrace:
> 
> #0  0x0040dd1b in strlen (s=0x0) at lib/string.c:228
> #1  0x00404652 in device_param_complete (begin=0 '\000',
> dev=0xb763fa94, sl=0xbfffefe0, instr=0x0) at common/complete.c:115
> #2  0x00404a24 in env_param_complete (sl=0xbfffefe0, instr=0x426160
> "dev", eval=0) at common/complete.c:209
> #3  0x00404c59 in complete (instr=0x426160 "dev", outstr=0xbffff064)
> at common/complete.c:282
> #4  0x00415687 in readline (prompt=0x426ac0 "barebox:/ ", buf=0x426160
> "dev", len=1024) at lib/readline.c:209
> #5  0x00401363 in get_user_input (i=0xbffff1c8) at common/hush.c:414
> #6  0x004014c2 in file_get (i=0xbffff1c8) at common/hush.c:463
> #7  0x00402e4f in parse_stream (dest=0xbffff154, ctx=0xbffff198,
> input=0xbffff1c8, end_trigger=10) at common/hush.c:1278
> #8  0x00402fd2 in parse_stream_outer (ctx=0xbffff198, inp=0xbffff1c8,
> flag=2) at common/hush.c:1428
> #9  0x00403770 in run_shell () at common/hush.c:1647
> #10 0x00407d6a in start_barebox () at common/startup.c:167
> #11 0x0041f082 in main ()

try with this patch

Best Regards,
J.

--UHN/qo2QbUvPLonB
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="p.patch"

diff --git a/common/complete.c b/common/complete.c
index 586a7eb..f9c05b4 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -88,6 +88,9 @@ int device_complete(struct string_list *sl, char *instr)
 	char cmd[128];
 	int len, len2;
 
+	if (!instr)
+		instr = "";
+
 	len = strlen(instr);
 
 	for_each_device(dev) {
@@ -112,6 +115,9 @@ static int device_param_complete(char begin, struct device_d *dev,
 	char *tmp = cmd;
 	int len, len2;
 
+	if (!instr)
+		instr = "";
+
 	len = strlen(instr);
 	if (begin) {
 		tmp[0] = begin;
@@ -156,6 +162,9 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	int len, len2;
 	char end = '=';
 
+	if (!instr)
+		instr = "";
+
 	if (eval) {
 		cmd[0] = '$';
 		tmp++;

--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--UHN/qo2QbUvPLonB--
