Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceOKa-0002CP-01
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 15:50:53 +0000
Message-ID: <1487260229.13536.33.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 16 Feb 2017 16:50:29 +0100
In-Reply-To: <067eac64-0c28-4012-23bb-813e462d74c2@eurekelettronica.it>
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
 <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
 <067eac64-0c28-4012-23bb-813e462d74c2@eurekelettronica.it>
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
Subject: Re: Using LVDS in a iMX6Q/D from Barebox
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 16.02.2017, 15:43 +0100 schrieb gianluca:
> On 02/16/2017 08:28 AM, Sascha Hauer wrote:
> > On Wed, Feb 15, 2017 at 03:34:55PM +0100, gianluca wrote:
> >> On 02/15/2017 12:51 PM, Sascha Hauer wrote:
> >>> On Tue, Feb 14, 2017 at 11:32:44AM +0100, gianluca wrote:
> >>>> On 02/10/2017 08:35 AM, Sascha Hauer wrote:
> >> If no eeprom is found activate the status of the hdmi node from "disabled"
> >> to "okay". So with the same algorithm as above,
> >>
> >> Those operations will be done in the coredevice_initcall() level. Is this
> >> correct?
> >
> > Sounds like a plan. I'm not sure though if you find your EEPROM at
> > coredevice_initcall time.
> >
> 
> Nope. Accessing device drivers (enabled in the device-tree) is possible 
> in the section: device_initcall() and *NOT* in the coredevice_initcall() 
> time.
> 
> Anyway I was wondering if looking for a node in the device-tree, it will 
> be possible to change the status of that node.
> 
> in DTS I have
> 
> &hdmi {
> 	status="disabled";
> }
> 
> but I need to set the status to "okay" later on the device_initcall() time.
> 
> Iterating in the device tree using for_each_node_by_name_from() does not 
> show any node like hdmi, but using the same function to look for any 
> "display-timing" section it works.

The node isn't called just "hdmi", that is just the handle, which may
not even be present in the final DTB if nothing uses it. The nodes name
is "hdmi@0120000".

See "arch/arm/boot/dts/imx6qdl.dtsi".

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
