Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3Kx-0004p3-C2
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:51:12 +0000
Received: by lbvn10 with SMTP id n10so25098804lbv.4
 for <barebox@lists.infradead.org>; Sun, 01 Mar 2015 04:50:48 -0800 (PST)
Date: Sun, 1 Mar 2015 16:54:25 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150301165425.ae74fe890992a1a47aac4294@gmail.com>
In-Reply-To: <5243411.sF5OIl90BO@linux-small.site>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <1588230.G27jqyn2gQ@linux-small.site>
 <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
 <5243411.sF5OIl90BO@linux-small.site>
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
Cc: barebox <barebox@lists.infradead.org>, Daniele Lacamera <daniele.lacamera@altran.com>

On Sun, 1 Mar 2015 01:29:56 +0100
DI PEDE Michele <michele.dipede@altran.com> wrote:

> On Sat 28 Feb 2015 21:01:01
...
> Please take a look at the application driven API.

> In order to integrate our stack you should use the application driven API=
. It =

> is documented in user manual in section 3.12 (TFTP). In order to receive =
a =

> file the sequence should be:
> session =3D pico_tftp_app_setup(&server_address, short_be(PICO_TFTP_PORT)=
, =

> PICO_PROTO_IPV4, &synchro);
> ret =3D pico_tftp_app_start_rx(session, filename);
> ret =3D pico_tftp_get_file_size(session, &file_size);
> if (ret)
> printf("Information about file size has not been received"\n);
> =

> while (file_is_not_complete) {
>         len =3D pico_tftp_get(session, buf, PICO_TFTP_PAYLOAD_SIZE);
>         ....
> }
> =

> The example contained in test/test_tftp_app_client.c demonstrate how to u=
se =

> the interface for application driven behaviour.

Hmm. I have tried pico_tftp_get() and now I have several questions:

1. pico_tftp_get() has 3rd argument 'int32_t len'.
This 'len' argument is actually unused. Can we just drop it?


2. here is pico_tftp_get() example fragment:

        len =3D pico_tftp_get(session, buf, PICO_TFTP_PAYLOAD_SIZE);
        if (len < 0) {
            fprintf(stderr, "Failure in pico_tftp_get\n");
            close(fd);
            countdown =3D 1;
            continue;
        }
        ret =3D write(fd, buf, len);

pico_tftp_get() copies data to pointer buf. But the first four bytes are no=
t raw file
data but tftp header fields.
E.g. I receiving GPL text via pico_tftp_get():

first tftp data block:

00000000: 00 03 00 01 09 09 20 20 20 20 47 4e 55 20 47 45    ......    GNU =
GE
00000010: 4e 45 52 41 4c 20 50 55 42 4c 49 43 20 4c 49 43    NERAL PUBLIC L=
IC
00000020: 45 4e 53 45 0a 09 09 20 20 20 20 20 20 20 56 65    ENSE...       =
Ve
...
000001d0: 65 72 61 6c 20 50 75 62 6c 69 63 0a 4c 69 63 65    eral Public.Li=
ce
000001e0: 6e 73 65 20 69 73 20 69 6e 74 65 6e 64 65 64 20    nse is intended
000001f0: 74 6f 20 67 75 61 72 61 6e 74 65 65                to guarantee

second tftp data block:

00000000: 00 03 00 02 65 65 64 6f 6d 20 74 6f 20 73 68 61    ....eedom to s=
ha
00000010: 72 65 20 61 6e 64 20 63 68 61 6e 67 65 20 66 72    re and change =
fr
00000020: 65 65 0a 73 6f 66 74 77 61 72 65 2d 2d 74 6f 20    ee.software--to
00000030: 6d 61 6b 65 20 73 75 72 65 20 74 68 65 20 73 6f    make sure the =
so
00000040: 66 74 77 61 72 65 20 69 73 20 66 72 65 65 20 66    ftware is free=
 f

Here is a original GPL file dump, you can see that substring ' your fr'
is missed in data received by pico_tftp_get():

000001d0:  20 50 75 62 6c 69 63 0a  4c 69 63 65 6e 73 65 20   Public.Licens=
e =

000001e0:  69 73 20 69 6e 74 65 6e  64 65 64 20 74 6f 20 67  is intended to=
 g
000001f0:  75 61 72 61 6e 74 65 65  20 79 6f 75 72 20 66 72  uarantee your =
fr <<<<<<
00000200:  65 65 64 6f 6d 20 74 6f  20 73 68 61 72 65 20 61  eedom to share=
 a <<<<<<
00000210:  6e 64 20 63 68 61 6e 67  65 20 66 72 65 65 0a 73  nd change free=
.s
00000220:  6f 66 74 77 61 72 65 2d  2d 74 6f 20 6d 61 6b 65  oftware--to ma=
ke
   =

So data block written to file by
    ret =3D write(fd, buf, len);
is corrupted.

Could you please check this?


3. there is the find_session_by_socket() function. It uses special tftp_ses=
sions list.
Can we simply use priv field in 'struct pico_socket' for this purpose?


4. How I can determine "End Of File reached" situation after pico_tftp_get(=
) call?


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
