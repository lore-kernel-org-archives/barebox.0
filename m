Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYtM-0002z2-LG
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:23:07 +0000
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <AM6PR03MB54938204A7FDEB6C5E93A749FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cd5008fe-b93f-92c6-8f97-6f7adce32f0e@pengutronix.de>
Date: Mon, 20 Jan 2020 16:23:02 +0100
MIME-Version: 1.0
In-Reply-To: <AM6PR03MB54938204A7FDEB6C5E93A749FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
Content-Language: en-US
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
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>, Enrico Joerns <ejo@pengutronix.de>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On 1/16/20 4:09 PM, Hans-Ulrich Schlieben wrote:
> Hi Ahmad,
> 
> Thanks to your Mail I tested with barebox_2017.12.0-phy6.bb (thud used barebox_2017.12.0-phy4.bb) and this works in zeus too. 
> 
>> According to the state command output under thud, your state is stored on the EEPROM, not the NAND. Look for update-eeprom in your device tree.
>> There should also be an /dev/eeprom0.update-eeprom in barebox.
> That seems right, when working the eeprom is written to on each boot.
> But I could not find any references to *eep* inside barebox in any layer.

Does it come from the phytec git directly? Upstream barebox has this:
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/imx6qdl-phytec-state.dtsi?h=next

I would imagine, yours does to. You can check in the yocto build directory.
(If you have rm_work enabled, you might need RM_WORK_EXCLUDE += "your-barebox-recipe"
in your local.conf)

Also try of_dump /state inside of barebox to see the device tree node.

The reason, you haven't found it in the deploy/ device tree is that barebox modifies
the kernel device tree on loading and adds the state nodes to it.

>> if not, try executing the drvinfo command and see if the driver has probed the EEPROM.
>>>> Looks like the state node is missing in your device tree.

Do you have the state driver enabled? drvinfo should tell you that.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
