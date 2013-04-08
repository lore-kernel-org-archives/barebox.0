Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UP9lU-00011k-5y
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 10:57:33 +0000
Message-ID: <1365418646.1877.6.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 08 Apr 2013 12:57:26 +0200
In-Reply-To: <20130405003244.c9f5c8d09a8f7c0cf2ef17ee@gmail.com>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-9-git-send-email-dev@lynxeye.de>
 <20130405003244.c9f5c8d09a8f7c0cf2ef17ee@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 08/10] tegra: add generic debug UART support
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

Am Freitag, den 05.04.2013, 00:32 +0400 schrieb antonynpavlov@gmail.com:
> On Tue,  2 Apr 2013 08:19:10 +0200
> Lucas Stach <dev@lynxeye.de> wrote:
> 
> > ODMdata tells us which UART to use for debugging purposes. This is
> > agreed upon in both the upstream Linux kernel and U-Boot, so do it the
> > same way in barebox.
> 
> This patch disables serial console on my Toshiba AC100.
> 
Hm that's unfortunate, but I already suspected that your ODMdata might
be wrong.
What happens if you don't remove the serial init in your board? Do you
get a duplicate serial, or just your board defined one? If it still
works for you this way, we might take this as a compromise for now.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
