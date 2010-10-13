Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P60Rq-0004Ww-Cw
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 12:28:49 +0000
Message-ID: <4CB5A5F6.9040802@eukrea.com>
Date: Wed, 13 Oct 2010 14:28:38 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1286963684-16359-1-git-send-email-eric@eukrea.com>
	<20101013111439.GO28242@pengutronix.de>
In-Reply-To: <20101013111439.GO28242@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------050808030402020707000403"
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
Subject: Re: [PATCH] unbreak bootm
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------050808030402020707000403
Content-Type: text/plain; charset="iso-8859-15"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

Le 13/10/2010 13:14, Sascha Hauer a =E9crit :
> On Wed, Oct 13, 2010 at 11:54:44AM +0200, Eric B=E9nard wrote:
>> commit a3c1e5d888d0ee317ffc7635694684bb71213c9c was
>> not tested as all the tests are wrong and it breaks bootm
>>
>
> :-(
>
> How about the following patch (currently untested)?
>
works with the attached fix.

Eric

--------------050808030402020707000403
Content-Type: text/x-patch;
 name="0001-fix-Sascha-s-patch.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0001-fix-Sascha-s-patch.patch"

From 214d68524f90e4d7f223d1bf05b49e9958bd3c68 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed, 13 Oct 2010 14:27:19 +0200
Subject: [PATCH] fix Sascha's patch
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Eric B��nard <eric@eukrea.com>
---
 commands/bootm.c  |    2 +-
 common/image.c    |    2 +-
 scripts/mkimage.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index a7cbfb9..14475c7 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -350,7 +350,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	/* loop through the registered handlers */
 	list_for_each_entry(handler, &handler_list, list) {
-		if (image_get_os(hdr) == handler->image_type) {
+		if (image_get_os(os_header) == handler->image_type) {
 			handler->bootm(&data);
 			printf("handler returned!\n");
 			goto err_out;
diff --git a/common/image.c b/common/image.c
index 2b2c410..a4c8b95 100644
--- a/common/image.c
+++ b/common/image.c
@@ -287,7 +287,7 @@ void image_print_contents(const void *ptr)
 	printf ("%sEntry Point:  %08x\n", p, image_get_ep(hdr));
 
 	type = image_get_type(hdr);
-	if (type != IH_TYPE_MULTI || type != IH_TYPE_SCRIPT) {
+	if (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT) {
 		int i;
 		ulong data, len;
 		ulong count = image_multi_count(hdr);
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index f6cbb1c..40a3483 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -224,7 +224,7 @@ NXTARG:		;
 		 */
 		memcpy (hdr, ptr, sizeof(image_header_t));
 
-		if (image_check_magic(hdr)) {
+		if (image_get_magic(hdr) != IH_MAGIC) {
 			fprintf (stderr,
 				"%s: Bad Magic Number: \"%s\" is no valid image\n",
 				cmdname, imagefile);
-- 
1.7.0.4


--------------050808030402020707000403
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------050808030402020707000403--
