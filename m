Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgCsI-0003Uk-HI
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 12:15:19 +0000
Received: by mail-ee0-f47.google.com with SMTP id c13so3053007eek.6
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 04:14:54 -0800 (PST)
Date: Tue, 12 Nov 2013 13:14:51 +0100
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131112121451.GB77248@localhost>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
 <20131106174049.GA83992@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131106174049.GA83992@localhost>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Wed, Nov 06, 2013 at 06:40:49PM +0100, Andre Heider wrote:
> And yes, it works if I set fb0.enable=1 and fb0.register_simplefb=1,
> both are 0 per default.
> 
> Now I wonder who/where those are supposed to get set? Is that a job for
> the runtime environment?

if possible I'd like to make the fb work out of the box. Setting these
two parameters to default to "1" feels wrong (and I didn't find other
drivers to do so). Any suggestions?

Thanks,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
