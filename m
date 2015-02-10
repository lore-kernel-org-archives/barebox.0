Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL7RS-0001R3-LH
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:49:15 +0000
Date: Tue, 10 Feb 2015 10:48:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150210094849.GA12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <20150206073318.GI12209@pengutronix.de>
 <CA+nEJinXNs1G4tSctRPqxSV0PT5WnvSyBU1pKF7nbwwp9GzKNw@mail.gmail.com>
 <20150209073610.GS12209@pengutronix.de>
 <CA+nEJinTHda4R+crTWODbc2MxqMF9vtTLOReph-Bn_THY2oNMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJinTHda4R+crTWODbc2MxqMF9vtTLOReph-Bn_THY2oNMQ@mail.gmail.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 09, 2015 at 10:05:15PM -0700, Doug Brainard wrote:
> Sascha,
> 
> Okay this is probably a dumb question because I'm fairly new to git,
> but I've got everything working with the new environment and checked
> in locally, but now when I try to do a "git push origin master", I get
> an access denied error:
> 
> fatal: remote error: access denied or repository not exported: /git/barebox.git
> 
> What do I need to do to push the changes back up?

You have to send the patches to this list (Preferably using git
send-email). When they are reviewed ok I'll apply them to the master
repository. It's the normal process also used in many other opensource
project.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
