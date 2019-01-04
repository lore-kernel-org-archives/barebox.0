Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfEa3-0004qY-9t
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 01:47:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id u4so35267053wrp.3
 for <barebox@lists.infradead.org>; Thu, 03 Jan 2019 17:47:22 -0800 (PST)
MIME-Version: 1.0
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
 <20190103153120.efhgd2xtcct5xjq4@pengutronix.de>
In-Reply-To: <20190103153120.efhgd2xtcct5xjq4@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 3 Jan 2019 17:47:09 -0800
Message-ID: <CAHQ1cqF2CbQNGb=EvQSyf==kE=eSzLwR9ByBM52O8yAJZJKsbg@mail.gmail.com>
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
Subject: Re: [PATCH 1/4] net/e1000: Map custom error codes to more appropriate
 errno values
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 3, 2019 at 7:31 AM Roland Hieber <rhi@pengutronix.de> wrote:
>
> On Wed, Dec 12, 2018 at 11:03:33PM -0800, Andrey Smirnov wrote:
> > A number of custom error codes used by e1000 driver will be propagated
> > all the way up to generic networking code and will end up being fed to
> > strerror(). As a result of that, some of the current error codes will
> > result in not very helpful failure messages. For example, trying to
> > ping a host on a system where access to i210's EEPROM fails results in
> > the following message:
> >
> >   barebox@ZII RDU2 Board:/ ping 192.168.53.7
> >   ping failed: Operation not permitted
> >
> > In order to make message like that one a little bit more helpful,
> > change definitions of various E1000_ERR_* constants to map to a bit
> > more appropriate error codes.
> >
> > While at it, remove E1000_ERR_MASTER_REQUESTS_PENDING and
> > E1000_ERR_HOST_INTERFACE_COMMAND that are not referenced anywhere in
> > the codebase.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/net/e1000/e1000.h | 24 +++++++++++-------------
> >  1 file changed, 11 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> > index 4a1a1aa33..0a9e107c0 100644
> > --- a/drivers/net/e1000/e1000.h
> > +++ b/drivers/net/e1000/e1000.h
> > @@ -95,19 +95,17 @@ typedef enum {
> >
> >  /* Error Codes */
> >  #define E1000_SUCCESS                                0
> > -#define E1000_ERR_EEPROM                     1
> > -#define E1000_ERR_PHY                                2
> > -#define E1000_ERR_CONFIG                     3
> > -#define E1000_ERR_PARAM                              4
> > -#define E1000_ERR_MAC_TYPE                   5
> > -#define E1000_ERR_PHY_TYPE                   6
> > -#define E1000_ERR_NOLINK                     7
> > -#define E1000_ERR_TIMEOUT                    8
> > -#define E1000_ERR_RESET                              9
> > -#define E1000_ERR_MASTER_REQUESTS_PENDING    10
> > -#define E1000_ERR_HOST_INTERFACE_COMMAND     11
> > -#define E1000_BLK_PHY_RESET                  12
> > -#define E1000_ERR_SWFW_SYNC                  13
> > +#define E1000_ERR_EEPROM                     EIO
> > +#define E1000_ERR_PHY                                EIO
> > +#define E1000_ERR_CONFIG                     EINVAL
> > +#define E1000_ERR_PARAM                              EINVAL
> > +#define E1000_ERR_MAC_TYPE                   EINVAL
> > +#define E1000_ERR_PHY_TYPE                   EINVAL
> > +#define E1000_ERR_NOLINK                     ENETDOWN
> > +#define E1000_ERR_TIMEOUT                    ETIMEDOUT
> > +#define E1000_ERR_RESET                              EIO
> > +#define E1000_BLK_PHY_RESET                  EWOULDBLOCK
> > +#define E1000_ERR_SWFW_SYNC                  EBUSY
>
> Just a small nitpick, and I'm not sure it's relevant somewhere in the
> code: previously the mapping of symbols to numbers was bijective, but
> now it is no longer surjective. This may result in confusion when
> checking return codes, for example:
>
>     int ret = e1000_set_phy_mode(...;
>     if (ret == E1000_ERR_EEPROM) {
>         printf("could not read from eeprom\n");
>     } else if (ret == E1000_ERR_PHY) {
>         printf("could not write to phy register\n");
>     }
>
> In this case, when the e1000_set_phy_mode() code path returns
> E1000_ERR_PHY, it is interpreted as E1000_ERR_EEPROM because both are
> defined to EIO.
>

That's definitely true. When writing this patch I looked for usages
similar to what you describe in the actual code of the driver, but
didn't see anything that should cause a problem. The driver has a
pretty sizable set of error codes, but AFAICT none of them are really
used as anything more than a negative number passed up the call chain.
Grepping for "E1000_ERR_*" in drivers/net/e1000 doesn't seem to show
any usages in any comparison statements. Finding all of the points in
the driver where error codes cross over into generic codebase and
doing errno re-mapping there seemed like a more invasive/complicated
alternative, so I did go for it.

That's how my thinking went, anyway. I can re-do the patch if we
decide that maintaining unique ID for each E1000_ERR_* code is
desired.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
