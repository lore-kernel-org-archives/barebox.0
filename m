Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRki5-0007Zh-9a
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 16:57:50 +0000
Received: by lbiv13 with SMTP id v13so3940385lbi.11
 for <barebox@lists.infradead.org>; Sat, 28 Feb 2015 08:57:25 -0800 (PST)
Date: Sat, 28 Feb 2015 21:01:01 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
In-Reply-To: <1588230.G27jqyn2gQ@linux-small.site>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <CAOngqVX6ZPyUnfpEaNtGZey4Q+sfLNHeOqtt5_AMHH94=uuduw@mail.gmail.com>
 <CAGocsp1GAvjoo7fEs6i+vNRHqKgeQ+e4rQOdzsJKyxCEMCLw=Q@mail.gmail.com>
 <1588230.G27jqyn2gQ@linux-small.site>
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
Subject: Re: picotcp barebox integration
To: DI PEDE Michele <michele.dipede@altran.com>
Cc: barebox <barebox@lists.infradead.org>, Daniele Lacamera <daniele.lacamera@altran.be>

On Wed, 28 Jan 2015 14:35:19 +0100
DI PEDE Michele <michele.dipede@altran.com> wrote:

> Hi all,
> HEAD of development branch contains the required API for a smooth integra=
tion =

> with Barebox.
> User manual contains all the information for use them. There is also a sm=
all =

> demo TFTP client that show how to use the application driven interface =

> test/test_tftp_app_client.c. To build it just do make clean; make test; c=
d =

> test; make.
> Now should be easy to integrate out stack in Barebox code.
> Let me know how the integration effort proceed. We could provide proper =

> support from our side to speed up things.

I have tryed to integrate picotcp tftp support into barebox.
Latest picotcp development branch commit is

    commit 0a3b361848efe20259cb3ca5e79d73a95d8f476c
    Author: Daniele Lacamera <daniele.lacamera@tass.be>
    Date:   Wed Jan 28 13:55:23 2015 +0100
    =

        Added link status call to the device driver interface
    =

IMHO the tftp interface introduced in this picotcp development branch
can't be easely integrated into barebox tftp filesystem support code.

I'll illustrate this on sample barebox tftp file download session:

    barebox user setup network parameters and run 'tftp <filename>' command;
   =

    the tftp commands mounts tftp-server rootdir to barebox "/.tftp_tmp_pat=
h";
    and start file copy operation (/.tftp_tmp_path/<filename> -> /<filename=
>).

    copy operation consists of standard calls (very schematically):

      srcfd =3D open(<source file>, O_RDONLY);
      ...
      dstfd =3D open(<destination file>, O_WRONLY | O_CREAT | O_TRUNC);
      ...
      stat(srcfd, ...); /* just determine source file size if possible */
      ...
      while (r =3D read(srcfd, buffer, 4096)) {
          write(dstfd, buffer, r);
          ...
      }

      so reading data block from tftp-server is made by initiative of bareb=
ox command.
      The barebox tftp support code realize all standard calls (open, stat,=
 read, write ...).

      But let's examine picotcp tftp API. Picotcp tftp downloading file cod=
e consist of

           priv->session =3D pico_tftp_session_setup(&tpriv->server_ip4, PI=
CO_PROTO_IPV4);
           ...
           pico_tftp_start_rx(priv->session, short_be(PICO_TFTP_PORT), file=
name, cb_tftp_rx_opt, priv);

       But pico_tftp_start_rx() tries to download WHOLE FILE from tftp-serv=
er.
       I see no means to suspend data transfer initiated by  pico_tftp_star=
t_rx(),
       so I have no means to realize necessary read() and write() calls.

Sascha! Please comment this message.

> If you have any question please don't esitate to contact us
> =

> Best regards
> Michele Di Pede
> =

> Friday 19 December 2014 18:28:30, Michele Di Pede wrote:
> > Hi all,
> > I'm been very busy but I plan to work on the TFPT during the coming hol=
idays
> > to complete the it.
> > =

> > Regards
> > =

> > On Fri, Nov 28, 2014 at 8:38 PM, Daniele Lacamera
> > =

> > <daniele.lacamera@tass.be> wrote:
> > > Hi all,
> > > =

> > > Michele has been busy with another assignment lately, but he has also
> > > been working on the features you requested. He will update you on the
> > > status of his TFTP branch soon.
> > > =

> > > Thanks
> > > =

> > > /d
> > > =

> > > On Fri, Nov 21, 2014 at 3:25 PM, Antony Pavlov <antonynpavlov@gmail.c=
om> =

> wrote:
> > >> Hi!
> > >> =

> > >> What is current picotcp barebox integration status?
> > >> =

> > >> AFAIR latest picotcp-barebox integration discussion thread is
> > >> http://lists.infradead.org/pipermail/barebox/2014-September/020732.h=
tml
> > >> =

> > >> --
> > >> Best regards,
> > >> =

> > >>   Antony Pavlov


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
