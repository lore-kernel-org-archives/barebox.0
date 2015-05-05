Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f173.google.com ([209.85.212.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpbfQ-0005W3-Sa
 for barebox@lists.infradead.org; Tue, 05 May 2015 12:09:41 +0000
Received: by wizk4 with SMTP id k4so157853572wiz.1
 for <barebox@lists.infradead.org>; Tue, 05 May 2015 05:09:17 -0700 (PDT)
Message-ID: <5548B234.8070408@vanguardiasur.com.ar>
Date: Tue, 05 May 2015 09:06:12 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
MIME-Version: 1.0
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627830-17281-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <554500FC.2050607@vanguardiasur.com.ar>
 <5545335E.1000700@vanguardiasur.com.ar> <5545EF64.4050107@gmail.com>
 <5546A571.1000006@gmail.com>
In-Reply-To: <5546A571.1000006@gmail.com>
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
Subject: Re: [PATCH 01/13] net: phy: Support Marvell 88E1318S PHY
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On 05/03/2015 07:47 PM, Sebastian Hesselbarth wrote:
> On 03.05.2015 11:50, Sebastian Hesselbarth wrote:
>> On 02.05.2015 22:28, Ezequiel Garcia wrote:
>>> On 05/02/2015 01:53 PM, Ezequiel Garcia wrote:
>>>> On 04/09/2015 10:03 PM, Sebastian Hesselbarth wrote:
>>>>> This adds support for the Marvell 88E1318S Gigabit Ethernet PHY.
>>>>>
>>>>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> [...]
>>>>
>>>> With this commit, the Openblocks A6 PHY is not brought up, and so
>>>> network is broken.
>>>>
>>>> I'll look into it (unless you have an idea),
>>>>
>>>
>>> Hm.. the devicetree needs to specify the phy-mode:
>>>
>>> diff --git a/dts/src/arm/kirkwood-openblocks_a6.dts
>>> b/dts/src/arm/kirkwood-openblocks_a6.dts
>>> index fb9dc22..c53e37f 100644
>>> --- a/dts/src/arm/kirkwood-openblocks_a6.dts
>>> +++ b/dts/src/arm/kirkwood-openblocks_a6.dts
>>> @@ -171,6 +171,7 @@
>>>   &eth0 {
>>>          status = "okay";
>>>          ethernet0-port@0 {
>>> +               phy-mode = "rgmii-id";
>>>                  phy-handle = <&ethphy0>;
>>>          };
>>>   };
>>>
>>> However, network works really crappy even after this change (either in
>>> barebox or in Linux).
>>
>> Ezequiel,
>>
>> RGMII phy-mode would have been my first guess.
>>
>> Can you define "crappy"  with respect to ethernet?
>>

On barebox, I'm seeing tftp making slow progress but with lots and lots of
timeouts. And then on the Linux side, there are many NFSroot disconnects,
and userspace is unresponsive.

I haven't really done any serious measurements.

>> The patch doesn't do anything different than the linux marvell phy
>> code would do.

Yeah, I don't think the issue in on the PHY init.

>> Do you have access to A6's u-boot source and can match
>> up the PHY init sequence?

Yes. Although U-Boot is barely readable, can't see anything interesting
being done with the PHY. (from ftp://ftp.plathome.co.jp/pub/OBSA6/uboot/)

MV_VOID mvEthE1310PhyBasicInit(MV_U32 ethPortNum)
{
        MV_U16 reg;

        /* Set phy address */
        MV_REG_WRITE(ETH_PHY_ADDR_REG(ethPortNum), mvBoardPhyAddrGet(ethPortNum));

        /* reset the phy */
        mvEthPhyRegRead(mvBoardPhyAddrGet(ethPortNum),0,&reg);
        reg |= BIT15;
        mvEthPhyRegWrite(mvBoardPhyAddrGet(ethPortNum),0,reg);
        mvOsDelay(10);

        /* Leds link and activity*/
        mvEthPhyRegWrite(mvBoardPhyAddrGet(ethPortNum),22,0x3);
        mvEthPhyRegRead(mvBoardPhyAddrGet(ethPortNum),16,&reg);
        reg &= ~0xfff;
        reg |= 0x671;
        mvEthPhyRegWrite(mvBoardPhyAddrGet(ethPortNum),16,reg);
        mvEthPhyRegWrite(mvBoardPhyAddrGet(ethPortNum),22,0x0);
}

> 
> Maybe we need some 1V8 RGMII setup for A6 too?
> 
> https://lkml.org/lkml/2015/5/3/159
> 
> IO Configuration 0 register 0xf10100e0, bit 7:

Hm, it seems it's off in U-Boot:

openblocks>> md f10100e0
f10100e0: 1b1b1b1b 011b1b1b 00000000 00000000    ................

-- 
Ezequiel Garcia, VanguardiaSur
www.vanguardiasur.com.ar

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
