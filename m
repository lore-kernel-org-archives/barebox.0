Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKQFy-0002Qi-LY
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:33:27 +0000
Date: Tue, 26 Mar 2013 10:33:21 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130326093321.GA18836@pengutronix.de>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
 <5151687D.20905@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5151687D.20905@monstr.eu>
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
Subject: Re: [PATCH v4 0/5] ARM: add support for Zynq
To: Michal Simek <monstr@monstr.eu>
Cc: barebox@lists.infradead.org

On Tue, Mar 26, 2013 at 10:21:01AM +0100, Michal Simek wrote:
> Hi Steffen,
> 
> On 03/26/2013 10:11 AM, Steffen Trumtrar wrote:
> >Hi!
> >
> >This is mostly a repost of v3. Only changes are in 4/5.
> >The final image now gets always piped through zynq_mkimage. This is needed
> >anyway, so do it always.
> >This tool will eventually replace all the flash_header linker stuff, although
> >it is pretty simple on the Zynq.
> 
> I have signed to barebox mailing list today and I see that in the right time.
> It is little bit messy what you have sent.
> It is mix of v2/v3/v4 patches where it is not clear which version I should try.
> 
> Can you please resend the whole patchset as v5?
> 

Hi,

I'm actually not sure if I like the mix myself, but you gotta try stuff :-)
The series is the latest and greatest and some patches just didn't change.
But it seems to confuse more than it helps.
So, just take the series as is, please. Sascha is okay with the patches and
will take them (I hope he doesn't change his mind in the meantime :-))
Sorry for the confusion.

Regards,
Steffen


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
