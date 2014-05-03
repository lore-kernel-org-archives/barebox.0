Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WgYBS-0003cK-7S
 for barebox@lists.infradead.org; Sat, 03 May 2014 11:32:46 +0000
Received: by mail-ee0-f43.google.com with SMTP id e51so3871025eek.2
 for <barebox@lists.infradead.org>; Sat, 03 May 2014 04:32:23 -0700 (PDT)
Date: Sat, 3 May 2014 13:32:13 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140503113211.GA8953@omega>
References: <1398751606-10167-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398751606-10167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand-bb: use list_for_each_entry_safe
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Tue, Apr 29, 2014 at 08:06:46AM +0200, Sascha Hauer wrote:
> We need list_for_each_entry_safe in dev_remove_bb_dev since the
> list entries are removed during iteration over the list.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reported-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  drivers/mtd/nand/nand-bb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> index f387ef6..89d5945 100644
> --- a/drivers/mtd/nand/nand-bb.c
> +++ b/drivers/mtd/nand/nand-bb.c
> @@ -308,9 +308,9 @@ out1:
>  
>  int dev_remove_bb_dev(const char *name)
>  {
> -	struct nand_bb *bb;
> +	struct nand_bb *bb, *tmp;
>  
> -	list_for_each_entry(bb, &bb_list, list) {
> +	list_for_each_entry_safe(bb, tmp, &bb_list, list) {
>  		if (!strcmp(bb->cdev.name, name)) {
>  			devfs_remove(&bb->cdev);
>  			cdev_close(bb->cdev_parent);

after reconsider this one, we don't need a list_for_each_entry_safe here
because we returning after deleting and leave the for each loop there.
Sorry, so maybe we should revert this commit? :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
