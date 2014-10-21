Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgXK5-0007vv-K4
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 11:09:54 +0000
Date: Tue, 21 Oct 2014 13:09:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141021110931.GO14443@pengutronix.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
 <1413828961-12605-5-git-send-email-dev@lynxeye.de>
 <20141020210647.GA1676@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141020210647.GA1676@omega>
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
Subject: Re: [PATCH 5/7] sha2: fix invalid length check
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 20, 2014 at 11:06:49PM +0200, Alexander Aring wrote:
> Hi Lucas,
> 
> On Mon, Oct 20, 2014 at 08:15:59PM +0200, Lucas Stach wrote:
> > length is unsigned an thus can never be <0.
> > 
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  crypto/sha2.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/crypto/sha2.c b/crypto/sha2.c
> > index 26162e8..e495313 100644
> > --- a/crypto/sha2.c
> > +++ b/crypto/sha2.c
> > @@ -208,7 +208,7 @@ static void sha2_update(sha2_context * ctx, const uint8_t * input, size_t length
> >  	size_t fill;
> >  	uint32_t left;
> >  
> > -	if (length <= 0)
> > +	if (length = 0)
> 
> should be (length == 0).

Fixed while applying.

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
