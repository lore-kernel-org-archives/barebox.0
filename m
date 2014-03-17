Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vm01-scratchy.webonline.biz ([41.86.105.82])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPTCp-0003Gu-NE
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 08:47:36 +0000
Date: Mon, 17 Mar 2014 10:47:06 +0200
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CF4C8306.DD5F%ivor@veriline.co.za>
References: <CF4C8000.DD58%ivor@veriline.co.za>
In-Reply-To: <CF4C8000.DD58%ivor@veriline.co.za>
Mime-version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: GPIO setting
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, sure this is a quick and easy question for the group=8A

On the OMAP4430, using the command from within barebox prompt to configure
a GPIO for testing hardware:

gpio_direction_output 140 0

Should this be sufficient to set the gpio pin low, or is it required to
still do some pin muxing as well?

Thanks
Ivor



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
