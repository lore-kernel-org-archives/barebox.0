Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cgEiy-0005JC-Bw
 for barebox@lists.infradead.org; Tue, 21 Feb 2017 17:59:43 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <40270151-12f8-2e65-e290-377c432856b8@eurekelettronica.it>
Date: Tue, 21 Feb 2017 18:59:17 +0100
MIME-Version: 1.0
In-Reply-To: <1487689380.2268.18.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/21/2017 04:03 PM, Lucas Stach wrote:
>> I am fighting to enable ldb in Linux 4.9.7. In barebox the SAME
>> device-tree is modified by barebox to enable/disable the ldb or hdmi
>> depending on what is found.
>>
>> During Linux bootup with HDMI only, it works with no hassle.
>>
>> If booting with ldb it does not start the ldb driver registration due to
>> a panel/bridge missing.
>>
>> In the config of linux kernel I have (as imx_v6_v7_defconfig) all drm
>> and simple panel enabled.
>>
>> What is missing???
>>
>> During last week I was able to activate/deactivate the hdmi and ldb
>> nodes from internal device-tree of Barebox and everything is working great.
>>
>> Barebox is working without it, so I suppose it was working in Linux
>> kernel too...
>
> No, Linux does not support DT defined modes in the panel. You need a
> panel with a proper compatible and driver.
>
> See drivers/gpu/drm/panel. For most LVDS panels simple-panel is what you
> want to use.
I see. The main issue here, I have a bunch of display-timings (3 
actually) and they are working in Barebox setting the ldb timings in ldb 
node in the device-tree.

The same behaviour cannot be done in Linux?

in panel-simple there is a function named: panel_simple_get_modes() and 
it looks for edid eeprom on each panel, then add the fixed mode 
hardcoded in the module. Is there a clean way to add the 
timing-definition of the ldb module to this procedure?

Nobody has never had a multiple display-timing definitions in a 
device-tree and added those timings to the panel?
I cannot believe.

In barebox all display-timings are correctly added to the ldb device 
drivers, and I am wondering Linux does not do the same.

Due to this limitiation of the Linux Kernel, in my board 
device_initcall() I will try to change the compatibility string to match 
a hardcoded timing in the panel-simple.c hardcoded timing.

i.e.:
> panel {
> 	compatible = "simple-panel", "auo,b101aw03";
> 	...


to:
> panel {
> 	compatible = "simple-panel", "ampire,am800480r3tmqwa1h";
> ...


so Linux can be happy and register a framebuffer...

Is there a of_ utility in barebox to achieve this kind of stuff??
That is change a compatibility string *MODIFYING ONLY A VALUE* 
(ampire,...) and leave the "simple-panel" untouched?

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
