Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDdQl-0001qe-6J
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 17:49:19 +0000
Received: by mail-wg0-f52.google.com with SMTP id a1so5624702wgh.23
 for <barebox@lists.infradead.org>; Sat, 02 Aug 2014 10:48:56 -0700 (PDT)
Message-ID: <53DD2484.3020101@gmail.com>
Date: Sat, 02 Aug 2014 19:48:52 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1406666701-15356-5-git-send-email-ezequiel.garcia@free-electrons.com>
 <20140729213734.GA27654@arch.cereza> <53DA7C19.7000108@gmail.com>
 <20140802174021.GA29743@arch.cereza>
In-Reply-To: <20140802174021.GA29743@arch.cereza>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/6] net: phy: Support Marvell 88EE1545 PHY
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

On 08/02/2014 07:40 PM, Ezequiel Garcia wrote:
> On 31 Jul 07:25 PM, Sebastian Hesselbarth wrote:
>> On 29.07.2014 23:37, Ezequiel Garcia wrote:
>>> On 29 Jul 05:44 PM, Ezequiel Garcia wrote:
>>>> This commit adds support for Marvell's 88E1545 PHY chip. In particular, this
>>>> allows to support QSGMII interfaces.
>>>>
>>>> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
>>>> ---
[...]
>>>>  /* Mask used for ID comparisons */
>>>>  #define MARVELL_PHY_ID_MASK		0xfffffff0
>>>
>>> Small erratum: given this mask, the ID for the new PHY device should be
>>> 0x0x01410eb0 instead of 0x01410eb1.
>>>
>>> And by the way, Mirabox and Openblocks AX3 network support is not working.
>>> The link is not detected, so it seems there's some more PHY work to be done.
> 
> I've been doing some more tests and it seems that Openblocks AX3 works fine
> after all (last time I wasn't setting the parameters properly).
> 
> I need to do some more tests for Mirabox, but we probably need to setup the
> pinctrl to make it work. Currently, the board hangs when trying to bring up
> the network interface.
> 
>>
>> I just confirmed that (after adding support for 88e1318), driver works
>> on Armada XP ix4-300d on both RGMII ports.
>>
>> Armada XP requires some additional magic foo in some retarded register
>> to enable RGMII:
>>
>> #define ARMADA_XP_PUP_ENABLE_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x1864c)
>> /* Enable GBE0, GBE1, LCD and NFC PUP */
>> reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
>> reg |= 0x17;
>> writel(reg, ARMADA_XP_PUP_ENABLE_BASE);
>>
> 
> Thanks a lot for this test! Do you think it's OK to just add that
> initialization to armada_370_xp_init_soc() ?

I was hoping you'd try to do so on your SGMII board and report back
if it does any harm. I kind of have the impression that it is
_required_ only for single ended (R)GMII pins.

Also, I already have patches ready to separate 370 and XP. They are
quite compatible, but have some early differences of course. That way
we have some code duplication but won't pollute the file with early
setup for both.

>> I am not yet sure if that is also true for Armada 370 nor if it is also
>> true for SGMII/QSGMII ports. Took me a while to hunt this down, but
>> without above foo, there is no txclk on RGMII.
>>
> 
> The register is documented only on Armada XP, and it seems it's not needed
> for SGMII/QSGMII.

I'd say, if it does no harm, enable it unconditionally.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
