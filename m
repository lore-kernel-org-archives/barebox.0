Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqkpF-0003Cl-VC
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 12:55:05 +0000
Message-ID: <50040E86.60602@cmotion.eu>
Date: Mon, 16 Jul 2012 14:52:22 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <5003FACD.80400@cmotion.eu> <20120716134406.57843f19@eb-e6520>
In-Reply-To: <20120716134406.57843f19@eb-e6520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tx51 ethernet regression
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

thanks for the prompt reply.
> Le Mon, 16 Jul 2012 13:28:13 +0200,
> Christian Kapeller <christian.kapeller@cmotion.eu> a =E9crit :
>> I recently came to update my barebox port based on the karo tx51 imx
>> module from v2012.03.0 to v2012.07.0.
>>
>> I discovered, that, when trying to use the ethernet connection, I more
>> often than not get frame errors reported by the FEC.
>>
>> --snip--
>> barebox@Ka-Ro tx51:/ dhcp
>> phy0: Link is up - 1000/Full
>> error frame: 0x97b961c0 0x00000890
>> error frame: 0x97b96188 0x00000882
>> DHCP client bound to address 10.41.14.147
>> --snap--
>>
>> The errors range from 'non octet aligned frame' over 'Fifo overrun' to
>> timeouts. It renders the ethernet support unusable. Small images may
>> work but, require the one and other retry.
>>
>> One thing that catches my eye is that the auto negotioation resulted in
>> a 1000MBit link. The imx fec does only support 100MBit. I forced the
>> link to be set to 10MBit by declaring xcv_type=3DMII10 in the
>> fec_platform_data structure. Interestingly the link is now reported as
>> 100MBit, and shows the same behaviour.
>>
>> Another thing I checked was the changed pad definitions in commit
>> 2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6. Not only the type of the pad
>> data structure changed, but also some of their configuration as well.
>> For example, pads that were configured with FEC_PAD_CTL, now have other
>> settings enabled.
>>
>> I'reverted the pad changes, but still no luck. Auto negtiation starts,
>> but I don't seem to get any packets.
>>
>> So my question is: What change since v2012.03.0 could cause this kind of
>> behaviour?
>>
> same problem here. the problem comes from :
> 68b32be4926d3ab5b72036c0ceecef2f82aa0625 "i.MX51: Synchronize iomux
> header file from kernel"
> as now most pins have NO_PAD_CTRL which means the pad doesn't get
> reconfigured and thus some pads to communicate with the FEC are no more
> working.
> =

> A dirty workaround to default PAD config is :
> diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
> index 680d260..c21d8a2 100644
> --- a/arch/arm/mach-imx/iomux-v3.c
> +++ b/arch/arm/mach-imx/iomux-v3.c
> @@ -45,6 +45,8 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
>  =

>         if (!(pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
>                 __raw_writel(pad_ctrl, base + pad_ctrl_ofs);
> +       else if ((pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
> +               __raw_writel(0, base + pad_ctrl_ofs);
>  =

>         return 0;
>  }

I see your problem, and why this patch has solved it. My board also uses
some pads, that are declared with NO_PAD_CTRL. I've applied your
solution as well, but no luck. I see the same behaviour as before.

The fact, that I am, able to do dhcp (even without your change), and
sometimes transfer files from some other host, makes me think, that my
pad config isn't that broken. May be the problem is in the pad configs,
some changed to PAD_CTRL_[2,4,5], some are NO_PAD_CTRL.

I don't know how the pad configuration influences pads, that are
assigned to some imx peripheral, like the FEC. For example the PAD
definition for the pads used for reception is inconsistent:

from iomux-mx51.h:

#define MX51_PAD_NANDF_D9__FEC_RDATA0		IOMUX_PAD(0x554, 0x16c, 0x12,
0x958, 0, MX51_PAD_CTRL_4)
#define MX51_PAD_EIM_EB3__FEC_RDATA1		IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c,
0, NO_PAD_CTRL)
#define MX51_PAD_EIM_CS2__FEC_RDATA2		IOMUX_PAD(0x47c, 0x0e8, 3, 0x960,
0, NO_PAD_CTRL)
#define MX51_PAD_EIM_CS3__FEC_RDATA3		IOMUX_PAD(0x480, 0x0ec, 3, 0x964,
0, NO_PAD_CTRL)

I'd expect all RDATA signals all having the same pad control settings.
They don't have, and I't doesn't make a difference, when I set them all
to PAD_CTRL_4 as the first one.


Regards,
Christian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
