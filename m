Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkUNA-0004Df-JB
 for barebox@lists.infradead.org; Wed, 14 May 2014 08:17:09 +0000
Date: Wed, 14 May 2014 10:16:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514081644.GB5858@pengutronix.de>
References: <CAOMZO5CMuVwZGB4DoZchuE7DCJU4=fMHZQugBzm3mPsQsqEamw@mail.gmail.com>
 <56785357-39FF-4F83-B1B3-F20C1D921A25@gmail.com>
 <20140514093212.ad026f36df7b0e4edaa54ba6@gmail.com>
 <CAOpc7mGG+BLF+Jc1Q3UsSa+R7f96FxS3Rd22mckvJsMq_8m=nA@mail.gmail.com>
 <20140514072002.GZ5858@pengutronix.de>
 <CAOpc7mHnhTLxqA9FABZMSRnf05Ocu99bFTkch1DH63O+7=U-yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mHnhTLxqA9FABZMSRnf05Ocu99bFTkch1DH63O+7=U-yQ@mail.gmail.com>
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
Subject: Re: Changing the baudrate via barebox prompt
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, May 14, 2014 at 10:01:10AM +0200, Holger Schurig wrote:
> Hmm, i thought more that "magicvars" could also iterate over the
> devices and spits out their parameter. Internally, they are different,
> but from a users perspective both things do something "magical": a
> simple setting of a variable does some action.

Right now magicvars is just a compile time generated array of struct
magicvar. We could add a const char *description argument to the
dev_add_param_* functions for adding the descriptions to the parameters.

You can get the available parameters for a device with 'devinfo
<devname>', but currently there is no way to see all available
parameters for all devices. Also there can be no description attached
to a parameter. Adding this would indeed be valuable.

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
