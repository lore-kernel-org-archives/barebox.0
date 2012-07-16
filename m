Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqts3-0005Hc-Cq
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 22:34:28 +0000
Received: by pbbrq13 with SMTP id rq13so12104779pbb.36
 for <barebox@lists.infradead.org>; Mon, 16 Jul 2012 15:34:24 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 17 Jul 2012 08:29:26 +1000
Message-ID: <2711184.rUQpv2fWDx@dev1>
In-Reply-To: <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
MIME-Version: 1.0
Reply-To: Marc Reilly <marc@cpdesign.com.au>
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
Subject: Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size
To: barebox@lists.infradead.org
Cc: christian.buettner@rafi.de

Hi,

> I flashed from 0x0 to 0x7FFFF (image size: 479K).
> I flashed the environment image (image size: 3K) from 0x80000 to 0xFFFFF
Her you write 512k for env

> and changed the config code from barebox/environs/common/config to:
> 
> ...
> nand_parts="512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)"
And here you say its 786k.

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
