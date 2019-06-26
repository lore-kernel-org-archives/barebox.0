Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4E2-00079f-Op
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 09:28:23 +0000
Message-ID: <c1496d83a1ba4d4a61d69bf04abe4c6965a235a3.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 11:28:18 +0200
In-Reply-To: <24b0cc8b-93b2-ccf8-9b9d-1d618584958e@data-modul.com>
References: <24b0cc8b-93b2-ccf8-9b9d-1d618584958e@data-modul.com>
MIME-Version: 1.0
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
Subject: Re: load BL31 on imx8mm and imx8mq
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2019-06-26 at 08:46 +0000, Yazdani, Reyhaneh wrote:
> Hello everyone,
> 
> 
> On the process of bring-up imx8mm board, I am at the point that load
> bl31 and
> jump to ATF.Upon exit from ATF's initialization routine, the
> execution level
> should be EL2.
> 
> My question is about imx8mq_atf_load_bl31 function.
> After copy BL31 into OCRAM address, the function sets up the sp_el2
> to
> "MX8MQ_ATF_BL33_BASE_ADDR - 16".
> 
> Can anyone explain me why this address? Because I am using the same
> address for
> imx8mm and it seems Barebox does not return to this point.

sp_el2 is the address for the stack pointer in el2. This is done so
there is a stack pointer setup after returning from TF-A.
The TF-A return address is compiled into the TF-A and may be different
for the imx8mm. Looking into the TF-A PLAT_NS_IMAGE_OFFSET is set to
0x40200000. So execution should continue after TF-A at this address.

Regards,
Rouven Czerwinski


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
