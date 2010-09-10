Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ou1NB-0002Tv-0d
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 11:02:25 +0000
Date: Fri, 10 Sep 2010 13:01:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100910110130.GS9112@game.jcrosoft.org>
References: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
	<201009101127.01766.jbe@pengutronix.de>
	<AANLkTi=kFq71uyAstUiw82oV5EFt3nUv2u1JoQpO_XHR@mail.gmail.com>
	<201009101230.46079.jbe@pengutronix.de>
	<AANLkTinDUzc8BrJ_MqDWFhg9jpWayyuhZ2X_DCDx2sTD@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinDUzc8BrJ_MqDWFhg9jpWayyuhZ2X_DCDx2sTD@mail.gmail.com>
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
Subject: Re: storing barebox to flash /dev/nand0
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

> >
> > Okay, 256 kiB
> >
> >> crw------- =A0 =A0 =A0 =A0 =A00 nand0.barebox.bb
> >
> > Again, 0?
> >
> > For the environment it looks different:
> >
> >> crw------- =A0 =A0 131072 env_raw
> >> crw------- =A0 =A0 131072 env0
> >> crw------- =A0 =A0 131072 nand0.bareboxenv
> >> crw------- =A0 =A0 131072 nand0.bareboxenv.bb
> >
> > All are 128 kiB.
> OK maybee there is mix from mtd_parts in env config with vital partitions.
> I keep just vital partitions in code but result is the same:
> cr-------- 4294967295 zero
> crw-------       2973 defaultenv
> crw------- 4294967295 mem
> crw-------  268435456 nand0
> cr--------    8388608 nand_oob0
> crw-------          0 ram0
> crw-------         32 phy0
> crw-------     262144 self_raw
> crw-------          0 self0
> crw-------     131072 env_raw
> crw-------     131072 env0
> =

> self0 should be bb for self_raw where to store barebox. But why it has si=
ze 0?
> Don't understand? Am I doing something wrong? For env it works fine.
If I understand correctly your log you have a bad block on it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
