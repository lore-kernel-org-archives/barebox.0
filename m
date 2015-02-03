Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIj8l-0006vu-E4
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 19:28:03 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
 <20150203083312.GK18908@pengutronix.de>
Date: Tue, 03 Feb 2015 20:27:42 +0100
In-Reply-To: <20150203083312.GK18908@pengutronix.de> (Sascha Hauer's message
 of "Tue, 3 Feb 2015 09:33:12 +0100")
Message-ID: <87oapaaj81.fsf@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: pxa: add pxa25x support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Mon, Jan 26, 2015 at 10:33:46PM +0100, Robert Jarzmik wrote:
> Changes like this can unintentionally change defconfigs. In this case
> the existing pcm027 and mioa701 defconfigs now default to ARCH_PXA25X
> and no longer build for the correct board anymore. Fixed that up by
> adding "CONFIG_ARCH_PXA27X=y" to the defconfig files.

Oh thanks, I indeed overlooked that.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
