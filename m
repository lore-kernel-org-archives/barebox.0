Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.40])
 by bombadil.infradead.org with smtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUnY-0007ey-GH
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 08:03:29 +0000
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
 <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
 <201610210953.45417.jbe@pengutronix.de>
 <CABvwO2A6_mU3DzbWp9p=9NcvWeZGpni8GPL7x0qaLT2K1vXaog@mail.gmail.com>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <335f085d-3435-c643-5cef-ba19e477b6ae@eurekelettronica.it>
Date: Fri, 21 Oct 2016 10:02:44 +0200
MIME-Version: 1.0
In-Reply-To: <CABvwO2A6_mU3DzbWp9p=9NcvWeZGpni8GPL7x0qaLT2K1vXaog@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Loading kernel issues
To: barebox@lists.infradead.org

On 10/21/2016 09:54 AM, Javier Fileiv wrote:
> Thanks Juergen, shoul I short them between them, short them to GND or
> short them to VDD?
>

Short them together. Does not care if they are tied to GND or VCC, the 
results are surely invalid. ;-)

Best regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
