Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eolmo-0003x2-V6
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 07:59:28 +0000
Date: Thu, 22 Feb 2018 08:59:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222075914.mdeyv733gnzznrye@pengutronix.de>
References: <20180208132301.24921-1-aleksander@aleksander.es>
 <20180208132301.24921-8-aleksander@aleksander.es>
 <20180213075552.hbn2gay3w6p3xhi3@pengutronix.de>
 <CAAP7ucLDWHCijGOfR2YB_Y0RkeaBiwXgmaHiFkwSfA+kZP_RMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7ucLDWHCijGOfR2YB_Y0RkeaBiwXgmaHiFkwSfA+kZP_RMA@mail.gmail.com>
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
Subject: Re: [RFC PATCH v2 7/8] ratp: new md and mw commands
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Wed, Feb 21, 2018 at 02:10:09PM +0100, Aleksander Morgado wrote:
> >> read and write memory files without needing to do custom string
> >> parsing on the data returned by the console 'md' and 'mw' operations.
> >>
> >> The request and response messages used for these new operations are
> >> structured in the same way:
> >>
> >>  * An initial fixed-sized section includes the fixed-sized
> >>    variables (e.g. integers), as well as the size and offset of the
> >>    variable-length variables.
> >>
> >>  * After the initial fixed-sized section, the buffer is given, which
> >>    contains the variable-length variables in the offsets previously
> >>    defined and with the size previously defined.
> >>
> >> The message also defines separately the offset of the buffer
> >> w.r.t. the start of the message. The endpoint reading the message will
> >> use this information to decide where the buffer starts. This allows to
> >> extend the message format in the future without needing to break the
> >> message API, as new fields can be appended to the fixed-sized section
> >> as long as the buffer offset is also updated to report the new
> >> position of the buffer.
> >>
> >> E.g. testing with ratp-barebox-cli:
> >>
> >>   $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
> >>   Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
> >>   00:00:00:00:00
> >
> > It would be good to have to pointer to libratp and ratp-barebox-cli in
> > Documentation/user/remote-control.rst.
> >
> 
> I'll add the info, ok.
> 
> > What's your plan for the bbremote tool? It's a bit unfortunate to have
> > the new features only available in an external tool.
> >
> 
> Yeah, I knew you were going to say that :) So, don't know. Didn't want
> to spend much time on it because the new commands (md, mw, reset)
> could directly be run with bbremote as "bbremote run ..." and you
> would get the same output just with a different format. The benefit of
> the binary API is clear in libratp-barebox, i.e. to integrate it into
> applications that would make use of those operations without requiring
> formatting output for the human eye. The ratp-barebox-cli and bbremote
> support of the commands with the binary API would just be a
> convenience. I actually only developed the support for the new
> commands in the cli to make sure the library worked, as a way of
> testing it. That said, if you want I can try to implement them in
> bbremote as well and provide the same kind of output that you'd see in
> ratp-barebox-cli; it would at least be a way of testing the API
> directly within barebox without requiring any external tool.

If that isn't too much work then this would be great.

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
