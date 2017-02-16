Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGUG-0004Ss-Vu
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:28:22 +0000
Date: Thu, 16 Feb 2017 08:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
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

On Wed, Feb 15, 2017 at 03:34:55PM +0100, gianluca wrote:
> On 02/15/2017 12:51 PM, Sascha Hauer wrote:
> > On Tue, Feb 14, 2017 at 11:32:44AM +0100, gianluca wrote:
> > > On 02/10/2017 08:35 AM, Sascha Hauer wrote:
> > > > Hi Gianluca,
> > > > 
> > > > On Thu, Feb 09, 2017 at 03:37:41PM +0100, gianluca wrote:
> > > > > Hello,
> > > > > I would like to know if there is a clear way on using the lvds pins to drive
> > > > > a LVDS display in a custom made board, based on iMX6Q (in the near future
> > > > > the iMX6Dual).
> > > > 
> > > > I think what you are looking for is of_device_enable_and_register() or
> > > > of_device_enable_and_register_by_name(). You can call it on either the
> > > > lvds device node or the hdmi device node, depending on whether you found
> > > > an EEPROM or not.
> > > > 
> > > 
> > > I think this is not necessary as during boot I can see clearly:
> > > 
> > > > imx-ipuv3 2400000.ipu: IPUv3H probed
> > > > imx-ipuv3 2800000.ipu: IPUv3H probed
> > > > imx-ldb ldb.10: probe failed: Invalid argument
> > > > imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
> > > 
> > > So barebox is trying to bring-up the imx-ldb but fails.
> > > 
> > > So I suppose something is wrong in my device tree structure.
> > 
> > Nope, there's everything right.
> > 
> > I can reproduce this here on a GuF Santaro board. LVDS works fine on
> > current barebox as long as I leave hdmi disabled in the device tree.
> > When I enable hdmi I also get a "failed to get modes".
> > 
> > Normally when different outputs are available then one would expect
> > that each one of them is routed to some framebuffer, maybe with some
> > sane default and configurable during runtime. The current code falls
> > short here.
> > What happens is each framebuffer looks around for outputs, all finding
> > hdmi and lvds. Now the hdmi output may not have a monitor connected
> > and returns no valid mode. In this case the lvds is not even asked for
> > modes.
> > Also in the current code it can happen that the lvds is asked for modes
> > which are then applied to hdmi.
> > Where we currently are is that it should work when exactly one output
> > is enabled. Does lvds work properly when hdmi is disabled? In this
> > case I would suggest that you manipulate your devicetree so that exactly
> > one output is enabled.
> > 
> 
> 
> That's works. Thank you!
> 
> Now I am planning to adapt the (internal) and external device-tree to match
> the hardware.
> 
> First of all hdmi and ldb node are "disabled" by default.
> 
> Then I am looking for any eeprom in the lvds connector I have.
> If it is found, check the phandle "native-mode" of the display-timings node
> to match the value found in eeprom. If not matches the native-mode, it
> should change the native-mode phandle accordingly with the value found. (I
> was thinking about of_find_node_by_name() and then change its value using
> of_set_property_to_child_phandle(display, "native-mode")). And finally
> change the status of ldb node from "disabled" to "okay". Is this the correct
> way of doing this?
> 
> If no eeprom is found activate the status of the hdmi node from "disabled"
> to "okay". So with the same algorithm as above,
> 
> Those operations will be done in the coredevice_initcall() level. Is this
> correct?

Sounds like a plan. I'm not sure though if you find your EEPROM at
coredevice_initcall time.

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
