Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFfgP-0002dR-1n
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 09:10:10 +0000
Date: Mon, 26 Jan 2015 10:09:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150126090945.GJ12209@pengutronix.de>
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: Re: [PATCH 1/2] memtest: fix 4GB overflow fail
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: barebox@lists.infradead.org

(Adding Alexander Aring)

On Fri, Jan 23, 2015 at 02:41:41PM +0300, Dmitry Lavnikevich wrote:
> Add condition for checking size_t overflow. This fixes memtest fail
> > Memtest failed. Error: -22
> which appears when 4GB RAM is present.
> 
> Was tested on phyFLEX-i.MX6 modules with 4GB and 1GB RAM.
> 
> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
> ---
>  commands/memtest.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/memtest.c b/commands/memtest.c
> index d384436afb73..5e7896cc711c 100644
> --- a/commands/memtest.c
> +++ b/commands/memtest.c
> @@ -109,7 +109,7 @@ static int request_memtest_regions(struct list_head *list)
>  		start = PAGE_ALIGN(r->end);
>  		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
>  		size = end - start + 1;
> -		if (start < end) {
> +		if (start < end && start > r->end) {

This is still wrong since the calculation of end and size before that is
already wrong.

Could you give the following patch a test?

Sascha

-----------------------------8<-------------------------------

From 33ddaad19a253468ca5c67782b8d26bb9aadba14 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Jan 2015 09:59:32 +0100
Subject: [PATCH] memtest: Fix SDRAM size calculations

Calculating the size and end of the test region as

  end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
  size = end - start + 1;

is wrong. For an example resource of

  start = 0x80000000, end = 0x8fffffff

end results in:

  end = PAGE_ALIGN_DOWN(0x8fffffff) - 1 = 0x8fffefff

instead of 0x8fffffff. The size is then calculated to

  size = end - start + 1 = 0x8fffefff - 0x80000000 + 1 = 0x0ffff000

instead of 0x10000000

The correct way to do this is to calculate the real size and apply a
PAGE_ALIGN_DOWN afterwards:

  size = PAGE_ALIGN_DOWN(bank->res->end - start + 1) = 0x10000000

Fix this in three different places.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index d384436..379d82e 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -60,8 +60,7 @@ static int request_memtest_regions(struct list_head *list)
 		 */
 		if (list_empty(&bank->res->children)) {
 			start = PAGE_ALIGN(bank->res->start);
-			end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
-			size = end - start + 1;
+			size = PAGE_ALIGN_DOWN(bank->res->end - start + 1);
 
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
@@ -89,13 +88,13 @@ static int request_memtest_regions(struct list_head *list)
 		 * Between used regions. Start from second entry.
 		 */
 		list_for_each_entry_from(r, &bank->res->children, sibling) {
-			start = PAGE_ALIGN(r_prev->end);
-			end = PAGE_ALIGN_DOWN(r->start);
+			start = PAGE_ALIGN(r_prev->end + 1);
+			end = r->start - 1;
 			r_prev = r;
 			if (start >= end)
 				continue;
 
-			size = end - start;
+			size = PAGE_ALIGN_DOWN(end - start + 1);
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
 				return ret;
@@ -107,8 +106,8 @@ static int request_memtest_regions(struct list_head *list)
 		r = list_last_entry(&bank->res->children,
 				     struct resource, sibling);
 		start = PAGE_ALIGN(r->end);
-		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
-		size = end - start + 1;
+		end = bank->res->end;
+		size = PAGE_ALIGN_DOWN(end - start + 1);
 		if (start < end) {
 			ret = alloc_memtest_region(list, start, size);
 			if (ret < 0)
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
