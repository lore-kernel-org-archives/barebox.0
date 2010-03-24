Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by casper.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NuSDX-0002pT-VX
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 15:10:04 +0000
Date: Wed, 24 Mar 2010 16:08:18 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100324150818.GB2328@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de>
	<20100323150915.GB26177@darwin> <4BA8DEBF.6060305@eukrea.com>
	<20100323162201.GE26177@darwin>
	<ba216b431003240754g2f372416q53dd6f1ef4b95469@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431003240754g2f372416q53dd6f1ef4b95469@mail.gmail.com>
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
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

Hi Ivo,

El Wed, Mar 24, 2010 at 03:54:21PM +0100 Ivo Clarysse ha dit:

> On Tue, Mar 23, 2010 at 5:22 PM, Matthias Kaehlcke
> <matthias@kaehlcke.net> wrote:
> > according to the board documentation it's DDR2
> >
> > is this what barebox expects to find?
> >
> 
> I have an IMX25PDK with DDR2 memory (Samsung K4T51163QE-ZCE6).
> 
> To boot barebox from an SD card, I had to apply the following patch to
> the current HEAD (ce2411432e23b5cc313c92278b2320bf1547c002):

after applying your patch barebox effectivly came up :)

thanks a lot!

could you explain in few words why the patch is needed?

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

              We build too many walls and not enough bridges
                             (Isaac Newton)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
