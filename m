Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC4cZ-000463-OZ
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 11:31:36 +0000
Date: Mon, 6 Jul 2015 13:31:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150706113113.GO18700@pengutronix.de>
References: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
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
Subject: Re: [PATCH] digest: digest doesn't return an error if the signature
 length is incorrect
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 03, 2015 at 08:47:26AM +0200, Philippe Leduc wrote:
> Hi,
> 
> I noticed that digest return 0 even if the signature length is
> detected as incorrect. This patch also fix the documentation that
> seems obsolete (I considered that the patch was simply enough to make
> two corrections, but tell me if I should propose two patch).
> 
> 
> Subject: [PATCH] digest: digest doesn't return an error if the
> signature length is incorrect
> 
> fix: digest return no error even if the digest length is wrong
> fix: documentation error (-v -> -s / -V -> -S)
> 
> Signed-off-by: Philippe Leduc <ledphilippe@gmail.com>

Applied with the fixup Marc suggested. Your mailer wraps the lines, I
had to apply this one manually. Please have a look if you can fix that
next time.

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
