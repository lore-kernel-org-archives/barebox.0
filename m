Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9uIr-0002BB-Bg
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 08:52:42 +0000
Date: Fri, 7 Sep 2012 10:52:16 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120907085216.GA7329@sig21.net>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346960371-4129-3-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 3/3] miidev: fix 1G wrong detection
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Sep 06, 2012 at 09:39:31PM +0200, Eric B=E9nard wrote:
> since 99e72c8bbdbdc690025a5868d831f1fe79ad56fc on an i.MX51 based board,
> I get : "phy0: Link is up - 1000/Full". It seems miidev tries to probe
> the PHY to early and gets 0x3ffff which leads to the wrong capabilities
> setting.

Hm, MII registers are only 16bit, why does your mii_read()
implementation return 0x3ffff?

Also, what exactly do you mean by "too early"?  Your code
shouldn't call mii_register() before the MDIO clock is stable.

However, I have no objection to your change, it should
work for me, too.


Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
