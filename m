Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqhTZ-00053o-FI
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:20:25 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 3D9C44B0130
 for <barebox@lists.infradead.org>; Mon, 16 Jul 2012 11:20:04 +0200 (CEST)
Date: Mon, 16 Jul 2012 11:20:03 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120716112003.78c0737b@eb-e6520>
In-Reply-To: <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
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
To: barebox@lists.infradead.org

Hi Christian,

Le Mon, 16 Jul 2012 11:15:24 +0200,
christian.buettner@rafi.de a =E9crit :
> imx_nand_load_image() is never used in my imx53 board init code.. is this =

> the fault?
> =

FWIW I had the same issue on an i.MX51 : I didn't yet had the time to
investigate.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
