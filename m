Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out10.bezeqint.net ([192.115.188.217])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q3lny-0003tC-Ux
	for barebox@lists.infradead.org; Sun, 27 Mar 2011 08:58:40 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Sun, 27 Mar 2011 10:58:05 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F8BB@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
	<20110306182606.GD16849@tarshish>
	<201103081637.47812.jbe@pengutronix.de>
	<201103091200.16339.jbe@pengutronix.de>
In-Reply-To: <201103091200.16339.jbe@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: Re: Fallback environment in barebox
To: "jbe@pengutronix.de" <jbe@pengutronix.de>
Cc: Udi Ron <udi.ron@wellsense-tech.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

A general question regarding environment but not limited to.
If we have an environment partition on a NAND device which has 4 blocks
of 512K, and a block becomes bad when writing to it, does barebox handle
it and writes to the next block?

Thanks,

Boaz

On Wed, 2011-03-09 at 12:00 +0100, Juergen Beisert wrote:
> Juergen Beisert wrote:
> > I will search for them and resend them to this list. Please be patient.
> 
> Found them. But they need some re-work, as they are from March 2010...
> 
> Regards,
> Juergen
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
> Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
