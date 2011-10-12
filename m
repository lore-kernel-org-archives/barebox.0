Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDvGa-0004hz-BS
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 09:38:25 +0000
Received: by iarr31 with SMTP id r31so728499iar.36
	for <barebox@lists.infradead.org>; Wed, 12 Oct 2011 02:38:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJeSw6A7fSXznW8v_hWXBinGw4VDpn_8-_k1qx3TH6B1cQR3tQ@mail.gmail.com>
References: <CAGiJk9cnibz1M-FEyxo956b4PF0e3V06FH-vTxbZ=FogADSogQ@mail.gmail.com>
	<CAJeSw6A7fSXznW8v_hWXBinGw4VDpn_8-_k1qx3TH6B1cQR3tQ@mail.gmail.com>
Date: Wed, 12 Oct 2011 11:38:20 +0200
Message-ID: <CAGiJk9cqsKde00LyZNP5QdkBm2tdmrjYj9n5VOh=rCvqqAzqdg@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
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
Subject: Re: Pandaboard boot problems persist (was: [PATCH] Fixed unaligned
	access)
To: Fabian van der Werf <fvanderwerf@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

this works, Barebox is running thanks.

2011/10/12 Fabian van der Werf <fvanderwerf@gmail.com>:
> Hi,
>
>
> I noted that the latest merge of branch 'next' also broke barebox on my
> pandaboard. I suggest you get release v2011.10 and apply the unalignment
> patch on that release.
>
>
> Kind regards,
>
> Fabian
>
> On Wed, Oct 12, 2011 at 10:32 AM, Samuel Stirtzel
> <s.stirtzel@googlemail.com> wrote:
>>
>> Hi,
>> today I built the latest Barebox version for Pandaboard, which
>> includes the 'Fixed unaligned access' patch, but I still won't get it
>> to boot.
>>
>> Maybe I'm missing some configurations that differ from the defaults,
>> anyone had success booting Barebox on the Pandaboard?
>>
>>
>> At power on I get the following message:
>>
>> -
>> Texas Instruments X-Loader 1.5.1 (Sep =A06 2011 - 13:37:48)
>> Reading boot sector
>> Loading u-boot.bin from mmc
>>
>>
>> barebox 2011.10.0-00092-gc3d7a97 (Oct 12 2011 - 09:55:05)
>>
>> Board: Texas Instrument's Panda
>> PandaBoard Revision: 003
>> unable to handle NULL pointer dereference at address 0x00000000
>> pc : [<8f018044>] =A0 =A0lr : [<8f018020>]
>> sp : 8cffff38 =A0ip : 8d006158 =A0fp : 00100103
>> r10: 00000000 =A0r9 : 12345678 =A0r8 : 00000001
>> r7 : 8d006170 =A0r6 : 8f03d07c =A0r5 : 8d006170 =A0r4 : 8d0061e8
>> r3 : 00000000 =A0r2 : 00000000 =A0r1 : 00000000 =A0r0 : 8d0061e8
>> Flags: nZCv =A0IRQs off =A0FIQs off =A0Mode SVC_32
>> [<8f018044>] (omap_mmc_probe+0x6c/0x94) from [<8f005708>]
>> (platform_probe+0x10/0x14)
>> [<8f005708>] (platform_probe+0x10/0x14) from [<8f004f80>]
>> (match+0x54/0x98)
>> [<8f004f80>] (match+0x54/0x98) from [<8f005460>]
>> (register_device+0xc0/0xf4)
>> [<8f005460>] (register_device+0xc0/0xf4) from [<8f005778>]
>> (add_generic_device_res+0x44/0x4c)
>> [<8f005778>] (add_generic_device_res+0x44/0x4c) from [<8f029a08>]
>> (panda_devices_init+0xf4/0x1e4)
>> [<8f029a08>] (panda_devices_init+0xf4/0x1e4) from [<8f004bc4>]
>> (start_barebox+0x1c/0x118)
>> [<8f004bc4>] (start_barebox+0x1c/0x118) from [<80e80084>] (0x80e80084)
>> -
>>
>> Is this error directly related to the current issues with Barebox on
>> the Pandaboard?
>>
>> --
>> Regards
>> Samuel
>
>



-- =

Regards
Samuel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
