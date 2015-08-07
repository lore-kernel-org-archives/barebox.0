Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNkag-0002QK-MK
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 16:33:56 +0000
Received: by lbbtg9 with SMTP id tg9so26021211lbb.1
 for <barebox@lists.infradead.org>; Fri, 07 Aug 2015 09:33:32 -0700 (PDT)
Date: Fri, 7 Aug 2015 19:41:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150807194104.b02642e26c441e906a1deeca@gmail.com>
In-Reply-To: <55C4C388.9060102@icid.cu>
References: <55C4C388.9060102@icid.cu>
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
Subject: Re: serial port weird chars ...
To: Roberto Alejandro Espi Munoz <raespi@icid.cu>
Cc: barebox@lists.infradead.org

On Fri, 07 Aug 2015 10:41:12 -0400
Roberto Alejandro Espi Munoz <raespi@icid.cu> wrote:

> Hi ... I'm currently having some trouble with displaying characters =

> correctly in my terminal.  I'm using a board equivalent to the =

> mini2440.  This one has a NOR and a NAND.  I connect to it over a serial =

> port interface.  When I boot up the board in debug mode I'm able to see =

> clearly the messages displayed by the S3C2440A USB Downloader which is =

> copied in the NOR interface, I then download my barebox binary over the =

> USB interface and when it boots I get a lot of weird characters on =

> screen.  The console seems to respond correctly, I issue for example the =

> "reset" command and it resets but I can't make out what is displayed.   =

> I was guessing at first a serial port configuration problem on my =

> operating system (I use Linux), tried it over on Windows and same =

> effect, the first bootloader works great and barebox when starting just =

> mangles the characters.
> =

> The other weird problem is than when I use a USB-Serial converter to =

> connect to the board's serial port everything works !
> =

> I'm currently using barebox 2012.09 and OpenSuse Linux 13.2
> =

> Any ideas ? thanks

You have the problem if you use your host computer motherboard serial port =
(no matter, Linux or Windows),
isn't it?
And no problem if you use USB-Serial dongle. So it looks like host serial p=
ort problem.

Could you try to connect the board to another host computer?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
