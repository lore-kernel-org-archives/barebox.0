Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhcw-0006iR-Vh
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 09:04:20 +0000
Date: Mon, 2 Dec 2019 10:04:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191202090417.c4lc5iomlb7rkmmw@pengutronix.de>
References: <20191201174028.30319-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191201174028.30319-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] usb: gadget: fastboot: fix typo
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Sun, Dec 01, 2019 at 06:40:28PM +0100, Roland Hieber wrote:
> According to Wikipedia[1]:
> 
>   [The indefinite article] "an" is used before words starting with a
>   vowel sound, regardless of whether the word begins with a vowel
>   letter. This avoids the glottal stop (momentary silent pause) that
>   would otherwise be required between a and a following vowel sound.
> 
> "UBI" is pronounced like "you-bee-eye" or "youbee", so it starts with a
> consonant sound, therefore the correct indefinite article is "a".
> 
> [1]: https://en.wikipedia.org/w/index.php?title=English_articles&oldid=928781459#Distinction_between_a_and_an
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  drivers/usb/gadget/f_fastboot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
