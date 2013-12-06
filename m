Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VowYK-0007yL-SD
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 14:39:14 +0000
Received: by mail-we0-f177.google.com with SMTP id u56so719486wes.8
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 06:38:26 -0800 (PST)
Date: Fri, 6 Dec 2013 15:38:21 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131206143820.GA23004@omega>
References: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
 <1386322981-30721-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386322981-30721-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: start kernel: find a valid address for the
 atags list automatically
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, Dec 06, 2013 at 10:42:59AM +0100, Sascha Hauer wrote:
> If a board does not specify a place for the atags list default to
> SDRAM start + 0x100. The vast majority of boards uses this place
> anyway, so the call to armlinux_set_bootparams() can be removed
> fo most boards.
s/fo/for/

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
