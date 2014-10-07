Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::8])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbTaS-0002Cm-Eq
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 12:09:53 +0000
Message-ID: <5433D686.6080805@calao-systems.com>
Date: Tue, 07 Oct 2014 14:03:18 +0200
From: =?ISO-8859-15?Q?Gr=E9gory_Hermant?= <gregory.hermant@calao-systems.com>
MIME-Version: 1.0
References: <542E4AAD.7070703@calao-systems.com>
 <20141006055231.GM4992@pengutronix.de>
In-Reply-To: <20141006055231.GM4992@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: at91 usbserial issue
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sacha,
Thanks for your feedback.
Greg

On 06/10/2014 07:52, Sascha Hauer wrote:
> Hi Greg,
> =

> On Fri, Oct 03, 2014 at 09:05:17AM +0200, Gr=E9gory Hermant wrote:
>> Hi all,
>> The usbserial seems to be broken for board equipped with an Atmel sam926=
0/9g20 Soc.
>> I ran the lastest version of barebox (v2014.10.0) on a USB_A9G20_LPW.
>> Below the trace
>> udc0: registering UDC driver [g_serial]
>> g_serial usbgadget: acm/23ba9538: can't bind, err -19
>> g_serial udc0: failed to start g_serial: -19
>> usbserial: No such device
>> I didn't yet investigate this issue but i was wondering if someone notic=
ed the problem.
> =

> There have been quite some changes in the USB gadget stuff. I know
> USB serial currently works with i.MX and MUSB. Does v2014.08.0 still
> work? That was before the changes. If yes, I think bisecting it is
> the fastest way to find the culprit.
> =

> Sascha
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
