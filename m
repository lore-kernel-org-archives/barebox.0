Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YcvZF-0000zX-C4
 for barebox@lists.infradead.org; Tue, 31 Mar 2015 12:46:54 +0000
Received: by lbcmq2 with SMTP id mq2so11455362lbc.0
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2015 05:46:29 -0700 (PDT)
Date: Tue, 31 Mar 2015 15:50:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150331155051.5c09f9d591bd04b84423232d@gmail.com>
In-Reply-To: <66FFD9910051464CB128685455FE423D2FB77B@XMB-DCFR-31.europe.corp.altran.com>
References: <CAA4bVAHFEo=Si7NNXXFdR3vWyzpbVms8Txa8wy6MCS_aKyZVAA@mail.gmail.com>
 <1588230.G27jqyn2gQ@linux-small.site>
 <20150228210101.cfcbb70a472f7a910e19aada@gmail.com>
 <5243411.sF5OIl90BO@linux-small.site>
 <20150301165425.ae74fe890992a1a47aac4294@gmail.com>
 <66FFD9910051464CB128685455FE423D2FB77B@XMB-DCFR-31.europe.corp.altran.com>
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
Cc: barebox <barebox@lists.infradead.org>, LACAMERA Daniele <daniele.lacamera@altran.com>

Hi!

I have just published latest picotcp-enabled barebox.
Please see my picotcp.20150331 branch in my github barebox repo
(https://github.com/frantony/barebox/tree/picotcp.20150331).

This version is based on latest barebox-next and latest picotcp-development.
Here is barebox picotcp network features:

       * network interfaces and the 'ifconfig' command to rule them;
       * the 'route' command to see current picotcp route table;
       * the 'picoping' command to use picotcp ping support (also now bareb=
ox responds
         to ping requests);
       * the 'dhclient' command to use picotcp dhcp client;
(new)  * picotcp-based tftp filesystem support.


Here is note/todo list:

  1. tftp write operation is not supported;

  2. with picotcp we can't easely use 'tftp' command with old syntax
     (no $<current ethernet>.serverip anymore);

  3. just now picotcp-based tftp file transfer is 5 times slower than
     old realisation (partialy it is my bad, e.g. extra memory copy operati=
on
     is used for code simplification);

  4. picotcp has dns support, but just now it is unused in barebox;
 =

  5. no nfs support in picotcp (should we can keep current barebox nfs supp=
ort on
     top of barebox UDP support?).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
