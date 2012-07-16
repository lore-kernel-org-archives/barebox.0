Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmMD-0004KF-Dg
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:33:08 +0000
Date: Mon, 16 Jul 2012 16:32:55 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120716163255.668d680d@eb-e6520>
In-Reply-To: <50042475.3000604@cmotion.eu>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
 <20120716092101.GI30009@pengutronix.de>
 <OF1A7E21F3.CEBD2AB0-ONC1257A3D.0034CA43-C1257A3D.0034EAA0@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
 <50041B84.9080707@cmotion.eu>
 <OF4671681E.10E4C59C-ONC1257A3D.004BF387-C1257A3D.004C38C5@o0802.rafi.inhouse>
 <50042475.3000604@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox image size
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org, christian.buettner@rafi.de

Hi,

Le Mon, 16 Jul 2012 16:25:57 +0200,
Christian Kapeller <christian.kapeller@cmotion.eu> a =E9crit :

> On 07/16/2012 03:52 PM, christian.buettner@rafi.de wrote:
> > Thx for the hint.
> > What i don't understand is that barebox boots from nand but the
> > environement can't..
> =

> Good point. In any case the driver isn't able to recognize your nand
> device. I see from you supplied code snipplets, that your barebox is
> at least two weeks old. Maybe you use the upstream tree, as maybe there
> are already fixes for imx53 nand flash.
> =

you may try the ONFI patches as the log "nand_get_flash_type: second ID
read did not match ef,ef against c0,c0" seems very similar to what I
already saw in the past on one of my i.MX53 based board :

http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dcommit;h=3D7baead578db7e47ae=
dfcd3a5a21a69b9f37630d1
http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dcommit;h=3D4b23222c4d68bf40a=
d89c99bf5e7fcbaa235bffb
http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dcommit;h=3D632c45795065e6a74=
71ab82be38e808eb6204341

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
