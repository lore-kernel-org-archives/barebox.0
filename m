Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-x235.google.com ([2607:f8b0:4003:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAgwu-0003XJ-Dt
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 14:58:21 +0000
Received: by mail-oa0-f53.google.com with SMTP id j17so5512105oag.26
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 07:57:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1406279788.4643.17.camel@weser.hi.pengutronix.de>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406279788.4643.17.camel@weser.hi.pengutronix.de>
Date: Fri, 25 Jul 2014 16:57:57 +0200
Message-ID: <CABJ1b_TgK607dELHRvDEetiugZrCb_GT8tF-=VJ8rvmroF39tA@mail.gmail.com>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH RESEND 6/6] pci: mvebu: Add PCIe driver
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox <barebox@lists.infradead.org>

On Fri, Jul 25, 2014 at 11:16 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Mittwoch, den 23.07.2014, 11:26 +0200 schrieb Sebastian Hesselbarth:
>> This adds a PCI driver for the controllers found on Marvell MVEBU SoCs.
>> Besides the functional driver itself, it also adds SoC specific PHY
>> setup required for PCIe. Currently, only Armada 370 is fully supported.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>
> I can't really comment about the details, as I have no knowledge about
> this hardware in particular, but aside from the sysdata thing and one
> nit below this looks reasonable, so:
>
> Acked-by: Lucas Stach <l.stach@pengutronix.de>
>
>> ---
>> To: barebox@lists.infradead.org
>> To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
>> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
>> ---
> [...]
>> +
>> +static struct mvebu_pcie_ops armada_370_ops = {
>> +     .phy_setup = armada_370_phy_setup,
>> +};
>> +
>> +static struct of_device_id mvebu_pcie_dt_ids[] = {
>> +#if defined(CONFIG_ARCH_ARMADA_XP)
>> +     { .compatible = "marvell,armada-xp-pcie", },
>> +#endif
>> +#if defined(CONFIG_ARCH_ARMADA_370)
>> +     { .compatible = "marvell,armada-370-pcie", .data = (u32)&armada_370_ops, },
>> +#endif
>> +#if defined(CONFIG_ARCH_DOVE)
>> +     { .compatible = "marvell,dove-pcie", },
>> +#endif
>> +#if defined(CONFIG_ARCH_KIRKWOOD)
>> +     { .compatible = "marvell,kirkwood-pcie", },
>> +#endif
>> +     { },
>> +};
>> +
>
> Do those #if defined really buy us anything? I don't think they make a
> big difference on code size, so please get rid of those.

Hmm, without the #ifdef's we'd carry armada_370_ops _and_
armada_370_phy_setup on all SoCs, don't we?

Assuming there will also be armada_xp_foo, dove_foo, and kirkwood_foo
it will be quite a bunch of unnecessary code to carry around. But I admit,
I haven't checked code sizes, yet.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
