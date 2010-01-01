Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [212.27.42.5] (helo=smtp5-g21.free.fr)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NQoFD-00052W-2V
	for barebox@lists.infradead.org; Fri, 01 Jan 2010 20:37:15 +0000
Received: from smtp5-g21.free.fr (localhost [127.0.0.1])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 75136D4812B
	for <barebox@lists.infradead.org>; Fri,  1 Jan 2010 21:36:31 +0100 (CET)
Received: from [192.168.1.15] (tal33-2-82-228-175-43.fbx.proxad.net
	[82.228.175.43])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 8551DD4813F
	for <barebox@lists.infradead.org>; Fri,  1 Jan 2010 21:36:29 +0100 (CET)
Message-ID: <4B3E5CCD.60400@eukrea.com>
Date: Fri, 01 Jan 2010 21:36:29 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <20100101194822.GR5093@darwin>
In-Reply-To: <20100101194822.GR5093@darwin>
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
Subject: Re: confusion about relocation (ARM)
To: barebox@lists.infradead.org

Hi Matthias,

Le 01/01/2010 20:48, Matthias Kaehlcke a =E9crit :
> a comment in start_barebox() says 'We are running from RAM now', so i
> deduced SDRAM must work. but after having a look at start-arm.S i'm a
> little bit confused. as far as i understand the barebox code is copied
> to RAM in copy_loop(). what i don't see is where the program counter
> is set to the address in RAM?
>
in arch/arm/cpu/start-arm.S @ line 245 :
         ldr     pc, _start_armboot

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
