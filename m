Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2.ptmail.sapo.pt ([212.55.154.22] helo=sapo.pt)
 by merlin.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7VUJ-0006u3-8x
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 19:03:08 +0000
From: Cristiano Rodrigues <microcris@aeiou.pt>
Date: Thu, 08 Aug 2013 19:02:40 +0100
Message-ID: <3411064.hDDiBpcdpa@probook>
In-Reply-To: <201307220959.23884.jbe@pengutronix.de>
References: <2655265.6QViDogYJX@n56v> <20130709174049.GX516@pengutronix.de>
 <201307220959.23884.jbe@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Re: mini2440 (256MB NAND)
To: =?ISO-8859-1?Q?J=FCrgen?= Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Juergen!

I don't know if it was you or not but the problem seem to be solved :)

thanks for answering :)

On Monday 22 July 2013 09:59:23 you wrote:
> Hi Cristiano,
> =

> On Tuesday 09 July 2013 19:40:49 Sascha Hauer wrote:
> > On Mon, Jul 08, 2013 at 10:42:43PM +0100, Cristiano Rodrigues wrote:
> > > I'm trying to run the barebox (trunk version or any other recent
> > > version)
> > > in my mini2440 board but until now, I can't boot from nand.
> > =

> > Sorry, I can't help you with friendlyarm. Probably J=FCrgen has an idea,
> > but he is on holiday at the moment. Maybe he can help you once he's
> > back.
> =

> I'm back now ;)
> AFAIK there was some change in the generic bootstrap code. I guess the ba=
se
> code in the stepping stone RAM skipps the DRAM initialization by accident
> due to this change. That's why it works when the DRAM is already up and
> running and it fails if not.
> =

> Juergen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
