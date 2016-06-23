Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG0wL-00062A-IK
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 09:28:50 +0000
Date: Thu, 23 Jun 2016 11:28:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623092825.GD20657@pengutronix.de>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
 <8760t0pdi7.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8760t0pdi7.fsf@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Thu, Jun 23, 2016 at 09:31:44AM +0200, Holger Schurig wrote:
> I'm unsure if an "fbtest" command will be helpful.
> 
> Why don't you expose the various primitives (lines, circles, lines) with
> some commands?  Then people could use this in their boot scripts,
> including the equivalent of an fbtest program.

I for myself would prefer a fbtest command over drawing primitives, at
least when it includes some coloured boxes from which I know which
colour thy shall have. Anyway, I wouldn't recommend implementing fbtest
as a script.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
