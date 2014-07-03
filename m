Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2cU6-0008KU-HL
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 08:35:15 +0000
Date: Thu, 3 Jul 2014 10:34:37 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <alpine.DEB.2.10.1407031026270.15322@9VTHT2J-D520>
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
Subject: Re: [PATCH] automount: check for recursive automount
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer <s.hauer@...> wrote:
> +	static int in_automount;
> +
> +	if (in_automount)
> +		return;

It seems that we are using the 'in_automount' without initialization. 
Shouldn't we initialize the static 'in_automount' with 0? Or can we rely 
on the compiler, that all statics will be initialized with zeros?

Best regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
