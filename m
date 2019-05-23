Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqi8-0004TB-Ay
 for barebox@lists.infradead.org; Thu, 23 May 2019 16:36:58 +0000
Date: Thu, 23 May 2019 18:36:53 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190523163653.GC6249@ravnborg.org>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 0/9] ARM: at91: misc fixes and cleanup
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Thu, May 23, 2019 at 05:39:34PM +0200, Ahmad Fatoum wrote:
> The fixes are the same as in v2. The cleanup was made cleaner
> a bit.
> 
> Changes since v2:
>   - Collected Sam's Tested-by and Reviewed-by
>   - Reinstated *_get_ddram_size helpers, but without #ifdefs,
>     as suggested by Sascha
>   - While doing that, some more unnecessary #ifdef usage unraveled,
>     so added two patches for those as well
>   - Squashed in a fix for another const-safety warning, suggested by Sam

Changes looks good. I did not test them this time.
It will be a while before I get back to barebox hacking.

All patches are now:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
