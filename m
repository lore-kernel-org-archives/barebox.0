Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WdaP1-0002Re-V6
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 07:18:33 +0000
Date: Fri, 25 Apr 2014 09:16:03 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140425091603.3ba7af82@e6520eb>
In-Reply-To: <1398370627-27786-1-git-send-email-dev@lynxeye.de>
References: <1398370627-27786-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] RiOTboard: add new board
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

Le Thu, 24 Apr 2014 22:17:07 +0200,
Lucas Stach <dev@lynxeye.de> a =E9crit :

> =

> From: Eric B=E9nard <eric@eukrea.com>
> =

> this board is produced by Embest/Element 14 and is based on i.MX6 Solo
> The following features are tested :
> - UART2 (console)
> - eMMC
> - SDCard
> - uSDCard
> - Ethernet
> - USB Host (through 4 ports hub)
> - I2C 1/2/3
> - 2 LEDs
> =

> Boot on eMMC and through USB loader are tested.
> =

> For more informations on this board : http://www.riotboard.org/
> =

FWIW, we are working on a common dts for Riot & Mars boards.
So if you apply this one, I'll submit this change in the coming
weeks (common dtsi and 2 x dts).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
