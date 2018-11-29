Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJO5-0007Tc-7H
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:17:39 +0000
Date: Thu, 29 Nov 2018 11:17:25 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181127160654.7emsivocuj3hulq7@pengutronix.de>
References: <20181125225952.16159-1-r.hieber@pengutronix.de>
 <20181126090140.k443kixpzmcxhjim@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181126090140.k443kixpzmcxhjim@pengutronix.de>
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
Subject: Re: [PATCH 1/2] drivers: caam: add RNG software self-test
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 26, 2018 at 10:01:40AM +0100, Sascha Hauer wrote:
> On Sun, Nov 25, 2018 at 11:59:51PM +0100, Roland Hieber wrote:
[...]
> > +	if (caam_era < 8 && rngvid == 4 && rngrev < 3) {
> > +		rng_st_dsc = rng_dsc1;
> > +		desc_size = DSC1SIZE;
> > +		exp_result = rng_result1;
> > +	} else if (rngvid != 3) {
> > +		rng_st_dsc = rng_dsc2;
> > +		desc_size = DSC2SIZE;
> > +		exp_result = rng_result2;
> > +	} else {
> > +		pr_err("Error: Invalid CAAM ERA (%d) or RNG Version ID (%d) or RNG revision (%d)\n",
> > +				caam_era, rngvid, rngrev);
> > +		return -EINVAL;
> 
> Is this test really correct? Basically it says "We accept everything
> except rngvid == 3".

I asked back to Utkarsh Gupta at NXP, the original author of this
self-test. His reply was:

    (If condition) Legacy i.MX chipsets which are effected with this
    issue contain CAAM version below 8 and have RNG VID=4 and RNG
    REV <3.

    (else if condition) Current i.MX chipsets which are effected with
    this issue contain CAAM version greater than or equal to 8 and have
    RNG4.3 or above.

and he also agreed that the code could be more clear here.
If you do the math, the else-if clause only fires if

        !(caam_era < 8 && rngvid == 4 && rngrev < 3) && (rngvid != 3)
<=> [using De Morgan's laws]
        (caam_era >= 8 || rngvid != 4 || rngrev >= 3) && (rngvid != 3)

Note that (rngvid != 3) is always true because rngvid can only be 2 or
4. But he also mentions that the patch was meant to be run only on the
affected chips anyway, which rules out the cases rngvid == 2:

	(caam_era >= 8 || false || rngrev >= 3)
<=> 	(caam_era >= 8 || rngrev >= 3)

which is kind of what his formulation in natural language says.

I will use a clearer else-if condition instead in v2.

[...]
> > diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> > index 28fd42ecd7..e64f34870e 100644
> > --- a/drivers/hab/habv4.c
> > +++ b/drivers/hab/habv4.c
> > @@ -387,6 +387,27 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
> >  	habv4_display_event_record((struct hab_event_record *)data);
> >  }
> >  
> > +/* Some chips with HAB >= 4.2.3 have an incorrect implementation of the RNG
> > + * self-test in ROM code. In this case, an HAB event is generated, and a
> > + * software self-test should be run. This variable is set to @c true by
> > + * habv4_get_status() when this occurs. */
> > +bool habv4_need_rng_software_self_test = false;
> > +EXPORT_SYMBOL(habv4_need_rng_software_self_test);
> > +
> > +#define RNG_FAIL_EVENT_SIZE 36
> 
> ARRAY_SIZE is your friend.
> 
> > +static uint8_t habv4_known_rng_fail_events[][RNG_FAIL_EVENT_SIZE] = {
> > +	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
> > +	  0x00, 0x80, 0x00, 0x02,  0x40, 0x00, 0x36, 0x06,
> > +	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
> > +	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
> > +	  0x00, 0x00, 0x00, 0x01 },
> > +	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
> > +	  0x00, 0x04, 0x00, 0x02,  0x40, 0x00, 0x36, 0x06,
> > +	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
> > +	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
> > +	  0x00, 0x00, 0x00, 0x01 },
> > +};

No, ARRAY_SIZE won't work here:

drivers/hab/habv4.c:399:16: error: array type has incomplete element type 'uint8_t[] {aka unsigned char[]}'
 static uint8_t habv4_known_rng_fail_events[][] = {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/hab/habv4.c:399:16: note: declaration of 'habv4_known_rng_fail_events' as multidimensional array must have bounds for all dimensions except the first
 
 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
