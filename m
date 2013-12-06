Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VouhA-0003do-Ez
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:39:49 +0000
Date: Fri, 6 Dec 2013 13:39:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131206123925.GD24559@pengutronix.de>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
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
Subject: Re: How to debug Ethernet connectivity
To: Atilla Filiz <atilla.filiz@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 06, 2013 at 01:18:52PM +0100, Atilla Filiz wrote:
> Sorry, figured it out. Just most verbose output is funny as well:
> :/ miitool -vvv /dev/mc13xxx

Don't know what miitool does in this case, but mc13xxx is not your phy,
it's your PMIC.

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
