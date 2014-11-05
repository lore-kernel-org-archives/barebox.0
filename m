Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlwVB-0000XE-RF
 for barebox@lists.infradead.org; Wed, 05 Nov 2014 09:03:42 +0000
Message-ID: <1415178199.2481.2.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Nov 2014 10:03:19 +0100
In-Reply-To: <20141105072132.GI30369@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
 <1415094176-26435-2-git-send-email-l.stach@pengutronix.de>
 <20141105072132.GI30369@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 02/10] efi: add Barebox GUID
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.11.2014, 08:21 +0100 schrieb Sascha Hauer:
> On Tue, Nov 04, 2014 at 10:42:48AM +0100, Lucas Stach wrote:
> > A proper GUID is needed to namespace all sorts of
> > things, most prominently persistent variables.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  include/efi.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/include/efi.h b/include/efi.h
> > index 70fe254dbafa..507115881b55 100644
> > --- a/include/efi.h
> > +++ b/include/efi.h
> > @@ -468,6 +468,10 @@ extern efi_runtime_services_t *RT;
> >  #define EFI_VLANCONFIGDXE_INF_GUID \
> >  	EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
> >  
> > +/* barebox specific GUIDs */
> > +#define EFI_BAREBOX_VENDOR_GUID \
> > +	EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
> 
> Can we just make up our own?
> 
Yes we do. I've looked into this a while and it seems that every EFI
vendor/user is expected to just make up his own GUIDs. There is no
central registry or something except for the GUIDs that are standardized
in the EFI spec. The expectation here seems to be that GUIDs carry
enough entropy to not run into any collision problems.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
