Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=sivan.tkos.co.il)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7jkz-0000eB-Lq
 for barebox@lists.infradead.org; Fri, 09 Aug 2013 10:17:20 +0000
Date: Fri, 9 Aug 2013 13:16:49 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20130809101649.GA3703@tarshish>
References: <ce9d0dc069aa93694635e8bd5ac2fbd94bd2fa24.1376020752.git.baruch@tkos.co.il>
 <20130809073237.GA26614@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130809073237.GA26614@pengutronix.de>
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
Subject: Re: [PATCH] net: fix checksum verification
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Aug 09, 2013 at 09:32:37AM +0200, Sascha Hauer wrote:
> On Fri, Aug 09, 2013 at 07:01:24AM +0300, Baruch Siach wrote:
> > Checksum verification on data including its own checksum (as is the case with
> > IP headers) should give zero. Current code works well for the correct checksum
> > case, but fails to identify (most) errors.
> > 
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> > 
> > Untested. From code inspection only.
> > 
> >  net/net.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/net/net.c b/net/net.c
> > index 0bd9084..bd7a578 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -41,7 +41,7 @@ static unsigned int net_ip_id;
> >  
> >  int net_checksum_ok(unsigned char *ptr, int len)
> >  {
> > -	return net_checksum(ptr, len) + 1;
> > +	return net_checksum(ptr, len) == 0;
> 
> D'oh. There's a bug indeed. For a good packet net_checksum returns
> 0xffff (all ones in an u16). So the check should be:
> 
> 	return net_checksum(ptr, len) == 0xffff;

You're right, of course. I was just blindly copying the kernel that has this 
in ip_rcv():

    if (unlikely(ip_fast_csum((u8 *)iph, iph->ihl)))
        goto csum_error;

But I still don't understand the logic here.

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
