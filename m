Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFhY6-0001RL-Dl
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:09:43 +0000
Message-ID: <54C6204F.5060908@sam-solutions.com>
Date: Mon, 26 Jan 2015 14:09:03 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20150126090945.GJ12209@pengutronix.de>
In-Reply-To: <20150126090945.GJ12209@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] memtest: fix 4GB overflow fail
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 26/01/15 12:09, Sascha Hauer wrote:
> (Adding Alexander Aring)
> @@ -107,8 +106,8 @@ static int request_memtest_regions(struct list_head *list)
>   		r = list_last_entry(&bank->res->children,
>   				     struct resource, sibling);
>   		start = PAGE_ALIGN(r->end);
still here we have overflow.
Last region (stack) on 4GB systems ends on 0xfffffff7. So aligned up, 
start=0x00000000.
After that
> -		end = PAGE_ALIGN_DOWN(bank->res->end) - 1;
> -		size = end - start + 1;
> +		end = bank->res->end;
> +		size = PAGE_ALIGN_DOWN(end - start + 1);
>   		if (start < end) {
This check detects that there are some space after last region 
(start=0x00000000) till end of bank (0xffffffff) and then
>   			ret = alloc_memtest_region(list, start, size);
>   			if (ret < 0)
fails to allocate region from 0x00000000 for size 0x00000000.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
