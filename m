Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1scT-0000fn-DY
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 07:36:50 +0000
Received: by mail-la0-f49.google.com with SMTP id gf5so5529696lab.22
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 00:36:26 -0700 (PDT)
Date: Tue, 1 Jul 2014 11:48:30 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140701114830.dd38c1e5bf189fb243bce884@gmail.com>
In-Reply-To: <53B26353.2040008@kalray.eu>
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
 <1403735538-25437-2-git-send-email-antonynpavlov@gmail.com>
 <1404123503.4305.16.camel@weser.hi.pengutronix.de>
 <53B26353.2040008@kalray.eu>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v3 1/5] PCI: initial commit
To: =?ISO-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@kalray.eu>
Cc: barebox@lists.infradead.org

On Tue, 01 Jul 2014 09:29:23 +0200
Cl=E9ment L=E9ger <clement.leger@kalray.eu> wrote:

> > +int
> > +pci_read_config_byte(struct pci_dev *dev, u8 where, u8 *val)
> > +{
> > +	return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
> > +}
> > +
> > +int
> > +pci_read_config_word(struct pci_dev *dev, u8 where, u16 *val)
> > +{
> > +	return pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
> > +}
> > +
> > +int
> > +pci_read_config_dword(struct pci_dev *dev, u8 where, u32 *val)
> > +{
> > +	return pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
> > +}
> > +
> > +int
> > +pci_write_config_byte(struct pci_dev *dev, u8 where, u8 val)
> > +{
> > +	return pci_bus_write_config_byte(dev->bus, dev->devfn, where, val);
> > +}
> > +
> > +int
> > +pci_write_config_word(struct pci_dev *dev, u8 where, u16 val)
> > +{
> > +	return pci_bus_write_config_word(dev->bus, dev->devfn, where, val);
> > +}
> > +
> > +int
> > +pci_write_config_dword(struct pci_dev *dev, u8 where, u32 val)
> > +{
> > +	return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
> > +}
> >
> I would suggest replacing the "u8 where" (in pci_read/write_config and =

> others) by "int where" to allow future access to PCIe extended =

> configuration space (up to offset 0x1000).

Already done in [RFC v4] patchseries!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
