Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OkuaF-0005v6-5p
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 07:58:16 +0000
Message-ID: <4C68EF91.9020206@eukrea.com>
Date: Mon, 16 Aug 2010 09:58:09 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <20100816063704.GB28343@jasper.tkos.co.il>
	<20100816070904.GG27749@pengutronix.de>
In-Reply-To: <20100816070904.GG27749@pengutronix.de>
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
Subject: Re: fsl-udc (USB gadget) anyone?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sacha, Hi Baruch,

Le 16/08/2010 09:09, Sascha Hauer a =E9crit :
> On Mon, Aug 16, 2010 at 09:37:04AM +0300, Baruch Siach wrote:
>> Hi Barebox list,
>>
>> I see that there are no in-tree fsl-udc driver users. Does anyone here h=
ave
>> experience with this driver on an i.MX based system? What pre-probe()
>> initialization does this driver require at the platform code?
>
>
> We are using it on a custom i.MX25 board (which is not in mainline
> because hardly anyone could make use of the code). Here is the platform
> initialization code (mixed with ehci host support). It works fine in DFU
> mode, serial support is probably not working. I have tried serial
> support, but had problems integrating it properly in barebox.

interesting, I've tested it on an i.MX27 and I had to do the following =

change to get DFU working fine, else the 1st packet's last bytes were =

always wrong when flashing data to the NOR (or simply copying data into =

RAM) :
http://www.spinics.net/lists/u-boot-v2/msg01166.html

Do you think this fix is wrong ?

The init is the following :

static struct fsl_usb2_platform_data udc_info =3D {
	.operating_mode =3D FSL_USB2_DR_DEVICE,
	.phy_mode =3D FSL_USB2_PHY_ULPI,
};

static struct device_d udc_dev =3D {
	.name     =3D "fsl-udc",
	.map_base =3D IMX_OTG_BASE,
	.platform_data	=3D &udc_info,
};

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
