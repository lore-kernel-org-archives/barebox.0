Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwETV-0000tE-Hu
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 14:30:38 +0000
Received: by wwf10 with SMTP id 10so877921wwf.18
	for <barebox@lists.infradead.org>; Wed, 24 Aug 2011 07:30:36 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 24 Aug 2011 18:30:35 +0400
Message-ID: <CAA4bVAEHnV+d8JMXqTKtNWKdvfmXaS=S8S=KQBPRTQhbt8EnJg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: add_usb_ehci_device() don't set resource size
To: barebox <barebox@lists.infradead.org>

Hi!

add_usb_ehci_device() don't set resource size, it only set start address:

struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
                resource_size_t hcor, void *pdata)
{
        struct device_d *dev;

        dev =3D alloc_device("ehci", id, pdata);
        dev->resource =3D xzalloc(sizeof(struct resource) * 2);
        dev->num_resources =3D 2;
        dev->resource[0].start =3D hccr;
        dev->resource[0].flags =3D IORESOURCE_MEM;
        dev->resource[1].start =3D hcor;
        dev->resource[1].flags =3D IORESOURCE_MEM;

        register_device(dev);

        return dev;
}

So on my Tegra board I have this:

toshiba ac100> / devinfo ehci0
resources:
num   : 0
start : 0xc5000100
size  : 0x00000000
        ^^^^^^^^^^
num   : 1
start : 0xc5000140
size  : 0x00000000
        ^^^^^^^^^^
driver: ehci

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
