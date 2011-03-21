Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ex10.nebula.fi ([217.149.53.201])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q1aqd-00041d-KV
	for barebox@lists.infradead.org; Mon, 21 Mar 2011 08:52:24 +0000
Message-ID: <4D8711C3.7050107@nextfour.com>
Date: Mon, 21 Mar 2011 10:52:19 +0200
From: Teemu Peltola <teemu.peltola@nextfour.com>
MIME-Version: 1.0
References: <4D80C8AB.4040905@nextfour.com> <4D81D20E.3060803@eukrea.com>
In-Reply-To: <4D81D20E.3060803@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: i.MX25 3-stack - over-current change on port 1 - USB host port
	not working
To: barebox@lists.infradead.org

On 03/17/2011 11:19 AM, Eric B=E9nard wrote:
> Hi,
>
> On 16/03/2011 15:26, Teemu Peltola wrote:
>> I have Freescale i.MX25 3-stack development board + debug board
>> attached to
>> it. I have built barebox-2011.03.0 using
>> freescale_mx25_3stack_defconfig with
>> some modifications to support NAND booting (see below). I have used
>> buildroot-2011.02 to create 2.6.38 kernel (CONFIG_MACH_MX25_3DS=3Dy
>> etc.) and
>> rootfs images.
>>
>> When I boot these images from barebox, dmesg displays the following error
>> message constantly and USB host port does not work:
>>
>> mxc-ehci mxc-ehci.1: GetStatus port:1 status cc001020 102 ACK POWER
>> sig=3Dse0 OCC
>> hub 1-0:1.0: over-current change on port 1
>> hub 1-0:1.0: enabling power on all ports
>> hub 1-0:1.0: state 7 ports 1 chg 0000 evt 0002
>>
>> If I try to use Freescale RedBoot (mx25_3stack_redboot_TO1_1.bin from
>> L2.6.31_09.12.00_SDK_images_MX25 package) with the same kernel and
>> rootfs, USB
>> works. Is there some initialization that is missing from barebox?
>>
> if you don't need USB in barebox don't enable it. I also have problems
> with OTG port under Linux when it's enabled under barebox. I didn't yet
> found time to investigate.

Disabling USB in barebox did not help.

--
Teemu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
