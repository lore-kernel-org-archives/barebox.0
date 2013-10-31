Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbtRM-0001Vq-06
 for barebox@lists.infradead.org; Thu, 31 Oct 2013 14:41:40 +0000
Message-ID: <52726C0B.4070109@ge.com>
Date: Thu, 31 Oct 2013 14:41:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1383128571-8250-1-git-send-email-renaud.barbier@ge.com>
 <1383128571-8250-5-git-send-email-renaud.barbier@ge.com>
 <20131030113452.GG26639@ns203013.ovh.net>
In-Reply-To: <20131030113452.GG26639@ns203013.ovh.net>
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
Subject: Re: [PATCH 4/5] ppc: DA923RC: add board support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30/10/2013 11:34, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> +		barebox_set_model("Unknown");
>> > +
>> > +	/* Enable the GPIO Out pins */
>> > +	out_be32(gur + MPC85xx_GPIOCR_OFFSET, (gpiocr | MPC85xx_GPIOCR_GPOUT));
> this should be GPIO API
>> > +
>> > +	/* Enable NOR low voltage programming (gpio 2) an

Note that here the code enables a CPU function that is, the whole block
of pins is enabled to be used as GPIO out pin. This does not specify the
pins direction but the pins function.
Of course, this can be wrap in a function specific to the CPU.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
