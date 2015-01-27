Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YG1Eq-0004rq-8S
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 08:11:09 +0000
Date: Tue, 27 Jan 2015 09:10:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150127081046.GU12209@pengutronix.de>
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20150126090945.GJ12209@pengutronix.de>
 <54C6204F.5060908@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54C6204F.5060908@sam-solutions.com>
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

On Mon, Jan 26, 2015 at 02:09:03PM +0300, Dmitry Lavnikevich wrote:
> On 26/01/15 12:09, Sascha Hauer wrote:
> >(Adding Alexander Aring)
> >@@ -107,8 +106,8 @@ static int request_memtest_regions(struct list_head *list)
> >  		r = list_last_entry(&bank->res->children,
> >  				     struct resource, sibling);
> >  		start = PAGE_ALIGN(r->end);
> still here we have overflow.
> Last region (stack) on 4GB systems ends on 0xfffffff7. So aligned
> up, start=0x00000000.
> After that
> >-		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
> >-		size = end - start + 1;
> >+		end = bank->res->end;
> >+		size = PAGE_ALIGN_DOWN(end - start + 1);
> >  		if (start < end) {
> This check detects that there are some space after last region
> (start=0x00000000) till end of bank (0xffffffff) and then
> >  			ret = alloc_memtest_region(list, start, size);
> >  			if (ret < 0)
> fails to allocate region from 0x00000000 for size 0x00000000.

Ok, so your original patch is still necessary. I applied both my patch
and yours to -next.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
