Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGjiz-00075N-5W
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 07:41:13 +0000
Date: Thu, 29 Jan 2015 08:40:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129074051.GQ12209@pengutronix.de>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
 <1422488538-21580-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422488538-21580-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v2 1/3] dhcp: fix request packet's requested IP option
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 12:42:18AM +0100, Eric B=E9nard wrote:
> In the request packet, we are supposed to copy the IP that the DHCP server
> provided in the offer packet so that dhcp_extended can fill the option 50.
> There is actually an error in barebox as the pointer to the packet curren=
tly
> built is used as the source instead of the pointer to the offer packet.
> With this patch, barebox now sends a request packet which includes the ri=
ght
> requested IP in option 50.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied all 3. Thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
