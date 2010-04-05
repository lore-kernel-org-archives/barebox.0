Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NykkI-0004iO-2C
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 11:45:34 +0000
From: "Gadiyar, Anand" <gadiyar@ti.com>
Date: Mon, 5 Apr 2010 17:15:24 +0530
Message-ID: <5A47E75E594F054BAF48C5E4FC4B92AB0322418527@dbde02.ent.ti.com>
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
	<1270458446-25073-2-git-send-email-gadiyar@ti.com>
	<4BB9BE71.8090908@gmail.com>
In-Reply-To: <4BB9BE71.8090908@gmail.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH 1/3] omap3: rename defconfigs to align with kernel
To: Nishanth Menon <menon.nishanth@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Nishanth Menon wrote:
> On 04/05/2010 04:07 AM, Anand Gadiyar wrote:
> > Rename 3430SDP and beagleboard defconfigs to align with the
> > names used in the Linux kernel
> >
> > No functional change
> >
> > Signed-off-by: Anand Gadiyar<gadiyar@ti.com>
> > ---
> > Not sure if I need to send a git-diff for this. I can resend one
> > with -M if needed. Let me know
> >
> >   arch/arm/configs/omap3430_sdp3430_per_uart_defconfig |  216 -------------------
> >   arch/arm/configs/omap3530_beagle_per_uart_defconfig  |  215 ------------------
> >   arch/arm/configs/omap3_beagle_defconfig              |  215 ++++++++++++++++++
> >   arch/arm/configs/omap_3430sdp_defconfig              |  216 +++++++++++++++++++
> >   4 files changed, 431 insertions(+), 431 deletions(-)
> >
> > Index: barebox/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> > ===================================================================
> > --- barebox.orig/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> > +++ /dev/null
> 
> 
> NAK. The reason for using UART3 was to allow barebox to be used for 
> peripheral downloads over uart3. barebox builds are tiny enough to use 
> it as 2nd images. there are recovery tools that use this configuration. 
> I would recommend creating a new defconfig and adding additional help 
> modes in them instead.
> 

Ah, I see. I did not know that.

Will resend as one separate patch introducing the new config.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
