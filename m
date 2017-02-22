Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cgSGT-0007yg-0m
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 08:27:13 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
 <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
 <067eac64-0c28-4012-23bb-813e462d74c2@eurekelettronica.it>
 <1487260229.13536.33.camel@pengutronix.de>
 <638491f2-9946-e9b1-e84e-e9ae05464bcc@eurekelettronica.it>
 <20170222080055.wkham5jaqbidfizl@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <75ff7d5a-8952-590f-c6b4-9fc3d4c17753@eurekelettronica.it>
Date: Wed, 22 Feb 2017 09:26:25 +0100
MIME-Version: 1.0
In-Reply-To: <20170222080055.wkham5jaqbidfizl@pengutronix.de>
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
Subject: Re: Using LVDS in a iMX6Q/D from Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/22/2017 09:00 AM, Sascha Hauer wrote:
> On Fri, Feb 17, 2017 at 04:38:37PM +0100, gianluca wrote:
>> On 02/16/2017 04:50 PM, Lucas Stach wrote:
>>> Am Donnerstag, den 16.02.2017, 15:43 +0100 schrieb gianluca:
>>>> On 02/16/2017 08:28 AM, Sascha Hauer wrote:
>>>>> On Wed, Feb 15, 2017 at 03:34:55PM +0100, gianluca wrote:
>>>>>> On 02/15/2017 12:51 PM, Sascha Hauer wrote:
>>>>>>> On Tue, Feb 14, 2017 at 11:32:44AM +0100, gianluca wrote:
>>>>>>>> On 02/10/2017 08:35 AM, Sascha Hauer wrote:
>>>>>> If no eeprom is found activate the status of the hdmi node from "disabled"
>>>>>> to "okay". So with the same algorithm as above,
>>>>>>
>>>>>> Those operations will be done in the coredevice_initcall() level. Is this
>>>>>> correct?
>>>>>
>>>>> Sounds like a plan. I'm not sure though if you find your EEPROM at
>>>>> coredevice_initcall time.
>>>>>
>>>>
>>>> Nope. Accessing device drivers (enabled in the device-tree) is possible
>>>> in the section: device_initcall() and *NOT* in the coredevice_initcall()
>>>> time.
>>>>
>>>> Anyway I was wondering if looking for a node in the device-tree, it will
>>>> be possible to change the status of that node.
>>>>
>>>> in DTS I have
>>>>
>>>> &hdmi {
>>>> 	status="disabled";
>>>> }
>>>>
>>>> but I need to set the status to "okay" later on the device_initcall() time.
>>>>
>>>> Iterating in the device tree using for_each_node_by_name_from() does not
>>>> show any node like hdmi, but using the same function to look for any
>>>> "display-timing" section it works.
>>>
>>> The node isn't called just "hdmi", that is just the handle, which may
>>> not even be present in the final DTB if nothing uses it. The nodes name
>>> is "hdmi@0120000".
>>>
>>> See "arch/arm/boot/dts/imx6qdl.dtsi".
>>>
>>
>> Ok, thank you for hints.
>>
>> From my dts file:
>>
>>> &hdmi {
>>> 	ddc-i2c-bus = <&i2c2>;
>>> 	status = "disabled";
>>> };
>>>
>>
>> It is disabled by default. It will be enabled later by my device_initcall()
>> function.
>>
>>> &ldb {
>>> 	#address-cells = <1>;
>>> 	#size-cells = <0>;
>>> 	status = "disabled";
>>>
>>
>> As the hdmi node.
>>
>>> 	lvds0: lvds-channel@0 {
>>> 		fsl,data-mapping = "spwg";
>>> 		fsl,data-width = <24>;
>>> 		status = "disabled";
>>>
>>
>> Just for sure it is disabled too!
>>
>>
>>> 		display-timings {
>>> 			native-mode = <&am128080n3tz>;
>>
>> This is fixed. It will be changed during the device_initcall() functions.
>>
>>> 			/* DISPLAY 1280x800 AMPIRE AM1280800N3TZ */
>>> 			am128080n3tz: am1280800n3tz {
>>> 				clock-frequency = <71000000>;
>>> 				hactive = <1280>;
>>> 				vactive = <800>;
>>> 				hback-porch = <50>;
>>> 				hfront-porch = <50>;
>>> 				vback-porch = <5>;
>>> 				vfront-porch = <5>;
>>> 				hsync-len = <60>;
>>> 				vsync-len = <13>;
>>> 				hsync-active = <0>;
>>> 				vsync-active = <0>;
>>> 				de-active = <1>;
>>> 				pixelclk-active = <0>;
>>> 			};
>>> 			/* DISPLAY 1024x600 AMPIRE AM-1024600LTM LVDS */
>>> 			am1024600l: am1024600l {
>>> 				clock-frequency = <51200000>;
>>> 				hactive = <1024>;
>>> 				vactive = <600>;
>>> 				hback-porch = <0>;
>>> 				hfront-porch = <320>;
>>> 				vback-porch = <0>;
>>> 				vfront-porch = <35>;
>>> 				hsync-len = <1>;
>>> 				vsync-len = <1>;
>>> 				hsync-active = <0>;
>>> 				vsync-active = <0>;
>>> 				de-active = <1>;
>>> 				pixelclk-active = <0>;
>>> 			};
>>> 			/* DISPLAY 800x480 */
>>> 			ph800480t013: ph800480t013 {
>>> 				clock-frequency = <33300000>;
>>> 				hactive = <800>;
>>> 				vactive = <480>;
>>> 				hback-porch = <46>;
>>> 				hfront-porch = <210>;
>>> 				vback-porch = <23>;
>>> 				vfront-porch = <22>;
>>> 				hsync-len = <1>;
>>> 				vsync-len = <1>;
>>> 				hsync-active = <0>;
>>> 				vsync-active = <0>;
>>> 				de-active = <1>;
>>> 				pixelclk-active = <0>;
>>> 			};
>>> 		};
>>>
>>> 		port@4 {
>>> 			reg = <4>;
>>> 			lvds0_out: endpoint {
>>> 				remote-endpoint = <&in_lvds0>;
>>> 			};
>>> 		};
>>>
>>> 	};
>>> };
>>
>> The device_initcall() functions is looking for an eeprom on the lvds
>> channel, and if found it will matched against the native-mode phandle.
>> If it is different from the default, a new native-mode will be placed as
>> native-mode, and afterall the lvds-channel@0 and ldb will be flagged in
>> status as "okay".
>>
>> Then the of_device_enable_and_register_by_name("ldb@020e0008") will be
>> called.
>>
>> In the same way if an eeprom is found on the hdmi connector bus, the hdmi
>> status will be changed to "okay".
>>
>> If there is no display (so no eeprom either) connected on the lvds
>> connector, the device_initcall() functions will let all ldb stuff as default
>> (i.e. disabled) and it will enable the hdmi section if there is a hdmi
>> display (and its eeprom EDID) connected.
>>
>> The problem is the modeset of framebuffer (.num_modes): this list is created
>> from the device-tree sequence and the default does not respect the
>> native-mode section. i.e. if I have a 800x480 native mode display timing in
>> the device tree as a third option, the fb0.modes will have the 800x480 in
>> the third place.
>>
>> There is a quick (and dirty) way of calling the fb0.mode_name inside a
>> device_initcall()?
>
> You can do a setenv("fb0.mode_name", "800x480");
>

Yep. I supposed. But putting it inside a C code, need a recompilation. I 
opted for calling explicity in the init script shell to do this kinda stuff.

> However, it would be nicer to make the native mode the default. struct
> display_timings already has a native_mode field, but currently noone is
> interested in its value.
>

Actually in my code I do:

> static int of_display_timing_set(const char *name)
> {
> 	int ret = -1;
> 	struct device_node *root = NULL;
> 	struct device_node *display = NULL;
> 	struct device_node *timing = NULL;
> 	const char *node = "display-timings";
>
> 	pr_debug("%s Enter with: ACTIVATING %s as NATIVE-MODE\n", __func__, name);
>
> 	root = of_get_root_node();
>
> 	for_each_node_by_name_from(display, root, node) {
> 		if (display != NULL) {
> 			for_each_node_by_name_from(display, root, name) {
> 				timing = display;
> 				if (timing != NULL) {
> 					pr_debug("%s Node: %s PTR: 0x%p\n",
> 						__func__, timing->full_name, timing);
> 					break;
> 				}
> 			}
> 		} else {
> 			continue;
> 		}
> 	}
>
> 	if (name != NULL && timing != NULL) {
> 		pr_debug("%s Activating native-mode %s\n", __func__, name);
> 		/*
> 		 * Now we have the correct phandle ptr for the correct timing
> 		 * to point to. Now change the native-mode property to that phandle
> 		 */
> 		ret = of_set_property_to_child_phandle(timing, "native-mode");
> 		if (ret) {
> 			pr_err("%s Error on setting native-mode to %s\n", __func__, name);
> 		}
> 	} else {
> 		pr_debug("%s Some ptr are NULL! name: %p -- timing: %p\n",
> 			__func__, name, timing);
> 	}
> 	pr_debug("%s Exit with: %d\n", __func__, ret);
> 	return ret;

In this way I set as default native-mode the name of the timings passed 
to the function. Is there something better?

Anyway, now I am doing the same stuff for compatibile property of the 
panel, because Linux wants to have a timing hardcoded in the 
panel-simple instead of getting them from the timing section of the 
device-tree.

This is a very lack of feature to me. But now, it is quicker to use the 
bootloader to compile the correctness of the compatible property to a 
almost-identical-timings found in the panel-simple.c...

The other way is to add a edid chip (@ 0x50) for every panel I add, so 
to let the EDID stuff to discover what is connected or not to the lvds 
board.

This issue can not simply solved in this board, because I do have an 
internal eeprom at address 0x50, but it can not be usable for EDID stuff.

So I have two options:

1- let the imx-ldb.c code in the kernel to probe (simple-panel and edid) 
and *add* a way to parse the device-tree for adding mode timing property 
using the display-timing stuff. (this means kernel patch)

2- look for a common timings from an existing displays in simple-panel.c 
and pass them to the compatibile property of the panel in the 
device-tree via bootloader.

The step no.2 is the quickest to me. But the ugliest too. ;-)

Any hint?
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
