Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T82gD-0006Tz-Fr
 for barebox@lists.infradead.org; Sun, 02 Sep 2012 05:25:06 +0000
Received: by iaai1 with SMTP id i1so7101968iaa.36
 for <barebox@lists.infradead.org>; Sat, 01 Sep 2012 22:25:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201208272001.50503.jbe@pengutronix.de>
References: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
 <201208272001.50503.jbe@pengutronix.de>
Date: Sun, 2 Sep 2012 01:25:01 -0400
Message-ID: <CACO6GO68_8oLS2caknd=+j1C5ewdWtR65tTfwa_gviPYEjuSsQ@mail.gmail.com>
From: Fadil Berisha <f.koliqi@gmail.com>
Reply-To: f.koliqi@gmail.com
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on imx23-olinuxino
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Juergen,

Sorry, for replying so late, but took me time to identify problem.
 I am using function:

add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE, 0,
			       IORESOURCE_MEM, &mci_pdata);

It is supposed during initialisation to pass parameter  IMX_SSP1_BASE,
but in  function
 mxs_mci_initialize register base  mxs_mci->regs is initialised with
zero. As result mxs_mci_initialize writing in wrong memory area and
system hangs.
My workaround is:

static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
{
	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);

+	mxs_mci->regs = IMX_SSP1_BASE;

 Bellow is response with SD Card successfully added.

Regards

Fadil Berisha

mci@mci0: SD Card Rev. 2.00 or later detected
mci@mci0: Put the Card in Identify Mode
mci@mci0: Card's identification data is:
03534453-55303247-8071997F-BE00BC97
mci@mci0: Get/Set relative address
mci@mci0: Get card's specific data
mci@mci0: Card's specific data is: 00260032-5F5A83AE-FEFBCFFF-928040DF
mci@mci0: Transfer speed: 25000000
mci@mci0: Max. block length are: Write=1024, Read=1024 Bytes
mci@mci0: Capacity: 1886 MiB
mci@mci0: Limiting max. read block size down to 512
mci@mci0: Limiting max. write block size down to 512
mci@mci0: Read block length: 512, Write block length: 512
mci@mci0: Select the card, and put it into Transfer Mode
mci@mci0: Changing transfer frequency
mci@mci0: Trying to read the SCR (try 1 of 3)
mci@mci0: Prepare for bus width change
mci@mci0: Set SD bus width to 4 bit
IO settings: bus width=4, frequency=400000 Hz
mci@mci0: Card is up and running now, registering as a disk
mci@mci0: registered disk0
mci@mci0: mci_sd_read: Read 1 block(s), starting at 0
mci@mci0: SD Card successfully added
barebox:/ ls dev
defaultenv    disk0         disk0.0       disk0.1       disk0.2
disk0.3       full          mem           null          ram0
zero
barebox:/


On Mon, Aug 27, 2012 at 2:01 PM, Juergen Beisert <jbe@pengutronix.de> wrote:
> Hi Fadil,
>
> Fadil Berisha wrote:
>> Based on falconfing and mx23-evk, I did barebox port on
>> imx23-olinuxino board.  Here is barebox boot:
>>
>> Board: Olimex.ltd imx23-olinuxino
>> registered netconsole as cs1
>> Min. frequency is 1476 Hz
>> Max. frequency is 48000000 Hz
>> mxs_mci@mci0: registered as mci0
>> ehci@ehci0: USB EHCI 1.00
>> No MCI card preset
>
> In the mci-core.c source file you can enable the DEBUG macro to include more
> debug output. This will print more information about the MCI card detection.
> Maybe it helps.
>
> Check also:
>  - pin multiplexing
>  - power supply to the SD card
>  - GPIOs for detecting the SD card (some kind of inserting signal)
>  - increase the min frequency to about 400 kHz. Maybe 1476 Hz are too slow and
>    conflict with some timeout values
>
> Regards,
> Juergen
>
> --
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
